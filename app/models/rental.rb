class Rental < ApplicationRecord
  belongs_to :user
  belongs_to :car

  validates :start_date, :end_date, presence: true

  private

  def valid_date
    return if end_date.blank? || start_date.blank?

    erros.add(:end_date, "Add a valid end date") if end_date < start_date
  end
end
