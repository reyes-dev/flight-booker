class Flight < ApplicationRecord
  belongs_to :departure_airport, class_name: 'Airport'
  belongs_to :arrival_airport, class_name: 'Airport'
  has_many :bookings

  def self.find_flight(dep_date, dep_id, arr_id)
    where("DATE(departure_date) = ? AND departure_airport_id = ? AND arrival_airport_id = ?", dep_date, dep_id, arr_id)
  end
end
