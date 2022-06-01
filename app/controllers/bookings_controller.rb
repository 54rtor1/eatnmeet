class BookingsController < ApplicationController
  #  before_action :find_booking, only: [:toggle_status]

  def index
    @bookings = Booking.all
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new
    @dining = Dining.find(params[:dining_id])
    @booking.dining = @dining
    @booking.user = current_user
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
end
