class Flower < ApplicationRecord
  has_many :orders
  has_many :reviews

  validates :name, presence: true, uniqueness: true
end
