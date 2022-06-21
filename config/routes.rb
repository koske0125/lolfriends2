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
    resources :users, only: [:edit, :show, :update]

  end

end
