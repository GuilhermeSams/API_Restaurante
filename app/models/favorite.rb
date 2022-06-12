class Favorite < ApplicationRecord
  belongs_to :user
  belongs_to :product

  has_many :prodcuts
  has_one :user
  has_many_attached :photos
  validates :user_favorite_product, presence: true
end
