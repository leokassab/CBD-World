class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :orders
  has_many :reviews
  validates :email, :phone_number, uniqueness: true, presence: true
  validates :adress, :first_name, :last_name, presence: true
end
