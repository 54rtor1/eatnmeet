class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @bookings = Booking.where(user: current_user)

    # @dining = Dining.where(user: current_user)
    @dinings = Dining.where(user_id: params[:id])
  end
end
