class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
    
  end

  def new
    render :booking
  end
end

