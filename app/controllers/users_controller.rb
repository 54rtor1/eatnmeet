require 'date'

class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @bookings = Booking.where(user: current_user)
    @past_bookings = []
    @future_bookings = []
    @bookings.each do |booking|
      if booking.dining.date < Date.today
        @past_bookings << booking
      else
        @future_bookings << booking
      end
    end
    @dinings = Dining.where(user_id: params[:id])
  end
end

# .where(@booking.dining.date BEFORE time.now)

# @dinings = Dining.where(booking.user = current_user)

# date = @dining.date

# @bookings.each do |booking|
#   if booking.dining.date < time.Now
