class Car < ApplicationRecord
  include PgSearch::Model
  pg_search_scope :search, against: %i[brand model], using: {
    tsearch: { prefix: true }
  }
  belongs_to :user
  has_many :reviews, dependent: :destroy
  has_many :rentals, dependent: :destroy
  has_many :users, through: :reviews
  has_many :users, through: :rentals

  validates :brand, :description, :model, :year, :price, :image_url, presence: true
  validates :year, length: { is: 4 }
end
