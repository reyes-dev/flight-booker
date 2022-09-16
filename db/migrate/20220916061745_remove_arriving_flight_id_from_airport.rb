class RemoveArrivingFlightIdFromAirport < ActiveRecord::Migration[7.0]
  def change
    remove_column :airports, :arriving_flight_id, :integer
  end
end
