class User < ApplicationRecord
  has_many :reviews, dependent: :destroy
  has_many :cars, dependent: :destroy
  has_many :rentals, dependent: :destroy
  has_many :cars, through: :reviews
  has_many :cars, through: :rentals

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
