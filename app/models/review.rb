class Review < ApplicationRecord
  belongs_to :user
  belongs_to :car
  validates :content, presence: true
end
