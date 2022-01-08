class Order < ApplicationRecord
  belongs_to :flower
  belongs_to :user
end
