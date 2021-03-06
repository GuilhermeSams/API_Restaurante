class User < ApplicationRecord

  has_many :favorites

  #acts_as_token_authenticatable

  has_one_attached :photos
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
