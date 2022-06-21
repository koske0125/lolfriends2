class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :trackable

  has_one_attached :profile_image

  enum is_published: { closed: 0, limited: 1, opened: 2 }

  validates :summoner_name, :email, :password, presence: true
  validates :password, length: { minimum: 6 }
end
