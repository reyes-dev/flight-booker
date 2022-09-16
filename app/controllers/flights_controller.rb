class FlightsController < ApplicationController
  def index
    @airport_options = Airport.all.map{ |a| [ a.airport_code, a.id ]}
    @passenger_options = [1, 2, 3, 4]
  end
end
