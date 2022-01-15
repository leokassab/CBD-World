class Review < ApplicationRecord
  belongs_to :user
  belongs_to :flowers

  validates :comment, presence: true #, :grade, comparison: { greater_than_or_equal_to: 0 } #, comparison: { less_than_or_equal_to: 5 }
end
