Rails.application.routes.draw do

  # 顧客用
# URL /customers/sign_in ...
devise_for :users, controllers: {
  registrations: "public/registrations",
  sessions: 'public/sessions'
}

# 管理者用
# URL /admin/sign_in ...
devise_for :admin, controllers: {
  sessions: "admin/sessions"
}
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  namespace :admin do
    get '/' => 'homes#top'
  end

# get '/customers/is_deleted' => 'public/customers#is_deleted'
  namespace :public, path: "" do
    get '/' => 'homes#top'
    get '/user/withdraw' => 'users#withdraw'
    resources :users, only: [:edit, :show, :update]
      resource :relationships, only: [:create, :destroy]
      get 'followings' => 'relationships#followings', as: 'followings'
      get 'followers' => 'relationships#followers', as: 'followers'
    resources :friends do
      collection do
        get 'is_rank'
        get 'is_normal'
        get 'is_beginner'
        get 'is_coaching'
        get 'is_coached'
        get 'is_clash'
      end
    end
  end

end
