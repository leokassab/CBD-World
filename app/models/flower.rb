class Flower < ApplicationRecord
  has_many :orders
  belongs_to :user
  validates :name, presence: true, uniqueness: true
  validates :price, :country, :category, :description, :cbd_ratio, :effect, :flavor, :weight, presence: true
end
