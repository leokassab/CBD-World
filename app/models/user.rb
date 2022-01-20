class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :orders
  has_many :reviews
  has_many :flowers
  validates :email,  uniqueness: true, presence: true
  validates :adress, :first_name, :last_name, :zip_code, :city, :country, :phone_number, presence: true
  validates :merchant, inclusion: { in: [ true, false ] }
  validates :compagny_name, :vat_number, :kbis, :siret, presence: true, if: :merchant
end
