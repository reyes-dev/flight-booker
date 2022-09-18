class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    @selected_flight = Flight.find(params[:flight_id])
    @departure_airport = Airport.find(@selected_flight.departure_airport_id)
    @arrival_airport = Airport.find(@selected_flight.arrival_airport_id)
    @amount_of_bookings = params[:num_tickets].to_i
    @amount_of_bookings.times { @booking.passengers.build }
    @flight_id = params[:flight_id]
  end

  def create
    @booking = Booking.create booking_params

    redirect_to root_path
  end

  private

  def booking_params
    params.require(:booking).permit(:flight_id, passengers_attributes: [:name, :email])
  end
end
