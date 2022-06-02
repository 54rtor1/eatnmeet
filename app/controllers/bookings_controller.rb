class BookingsController < ApplicationController
  # before_action :set_booking, only: [:destroy]

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
    if @booking.save
      redirect_to dining_path(@dining)
    else
      render "dinings/show"
    end
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
    @booking = Booking.find(params[:id])
    @dining = @booking.dining
    @booking.destroy
    redirect_to dining_path(@dining)
  end
end
