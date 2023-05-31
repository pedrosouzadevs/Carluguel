class Car < ApplicationRecord
  belongs_to :user
  has_many :reviews, dependent: :destroy
  has_many :rentals, dependent: :destroy
  has_many :users, through: :reviews
  has_many :users, through: :rentals

  validates :brand, :description, :model, :year, :price, :image_url, presence: true
  validates :year, length: { is: 4 }
end
