class RemoveDepartingFlightIdFromAirport < ActiveRecord::Migration[7.0]
  def change
    remove_column :airports, :departing_flight_id, :integer
  end
end
