class Car < ApplicationRecord
  belongs_to :user
  has_many :reviews, dependent: :destroy
  has_many :rentals, dependent: :destroy
  has_many :users, through: :reviews
  has_many :users, through: :rentals

  validates :brand, :description, :model, :year, presence: true
  validates :year, length: { maximum: 4 }
end
