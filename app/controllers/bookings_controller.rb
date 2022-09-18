class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    @selected_flight = Flight.find(params[:flight_id])
    @departure_airport = Airport.find(@selected_flight.departure_airport_id)
    @arrival_airport = Airport.find(@selected_flight.arrival_airport_id)
    @amount_of_bookings = params[:num_tickets].to_i
    @amount_of_bookings.times { @booking.passengers.build }
  end

  def create

  end

  private

  def booking_params
    params.require(:booking).permit(:name, :email)
  end
end
