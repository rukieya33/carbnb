class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :car
  validates :end_time, comparison: { greater_than: :start_time }
end
