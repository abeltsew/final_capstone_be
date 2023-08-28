class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :room
  belongs_to :city

  validates :room_id, :city_id, :date, :user_id, presence: true
end
