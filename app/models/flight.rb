class Flight < ApplicationRecord
  belongs_to :departure_airport, class_name: 'Airport'
  belongs_to :arrival_airport, class_name: 'Airport'
  has_many :bookings

  scope :departing_date, ->(departure_date) { where('DATE(departure_date) = ?', departure_date) }
  scope :departing_airport_id, ->(departure_airport_id) { where('departure_airport_id = ?', departure_airport_id) }
  scope :arriving_airport_id, ->(arrival_airport_id) { where('arrival_airport_id = ?', arrival_airport_id) }
end
