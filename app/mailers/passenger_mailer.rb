class PassengerMailer < ApplicationMailer
  default from: 'amourosairas@gmail.com'

  def confirmation_email(passenger)
    @passenger = passenger
    @url = 'http://localhost:3000/'
    mail(to: @passenger.email, subject: 'Your flight has been booked!')
  end
end