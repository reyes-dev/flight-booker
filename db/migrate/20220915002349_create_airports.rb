class CreateAirports < ActiveRecord::Migration[7.0]
  def change
    create_table :airports do |t|
      t.string :airport_code
      t.integer :departing_flight_id
      t.integer :arriving_flight_id

      t.timestamps
    end
  end
end
