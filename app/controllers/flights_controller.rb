class FlightsController < ApplicationController
  def index
    @airport_options = Airport.all.map { |a| [a.airport_code, a.id] }
    @passenger_options = [1, 2, 3, 4]
    if params.include?(:departure_airport_id)
      @selected_date = Date.new(
        params['departure_date(1i)'].to_i,
        params['departure_date(2i)'].to_i,
        params['departure_date(3i)'].to_i
      ).strftime('%Y-%m-%d')
      @datetime_departure = DateTime.strptime(@selected_date, '%Y-%m-%d')
      @flights = Flight.where('departure_date = ?
                              AND departure_airport_id = ?
                              AND arrival_airport_id = ?',
                              @datetime_departure,
                              params[:departure_airport_id],
                              params[:arrival_airport_id])
      else
        @flights = []
      end
  end
end
