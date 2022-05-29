class Product < ApplicationRecord
  has_many :categories
  belongs_to :category
  validates :name, :description, :price, presence: true
end
