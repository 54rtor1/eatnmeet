class BookingsController < ApplicationController
#  before_action :find_booking, only: [:toggle_status]

  def index
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.save
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  # def toggle_status
  #   @booking = bookings.find(params[:id])
  #   if @booking.book
  #     @booking.booked!
  #   elsif @booking.booked
  #     @booking.book!
  #   end
  # end

  private

  def booking_params
    params.require(:booking).permit(:comment)
  end

#  def find_booking
#    @booking = bookings.find(params[:id])
#  end
end
