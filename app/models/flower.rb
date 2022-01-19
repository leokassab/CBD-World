class Flower < ApplicationRecord
  has_many :orders
  has_many :reviews, dependent: :destroy
  belongs_to :user
  validates :name, presence: true, uniqueness: true
  validates :price, :country, :category, :description, :cbd_ratio, :effect, :flavor, :weight, presence: true
  has_one_attached :photo
end
