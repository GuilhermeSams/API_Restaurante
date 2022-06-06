class Favorite < ApplicationRecord
  belongs_to :user
  belongs_to :product

  has_many :prodcuts
  validates :user_favorite_product, presence: true
end
