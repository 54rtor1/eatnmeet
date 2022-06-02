class DiningsController < ApplicationController
  before_action :set_dining, only: [ :show, :edit, :update, :destroy ]

  def index
    @dinings = Dining.all
    @markers = @dinings.geocoded.map do |dining|
      {
        lat: dining.latitude,
        lng: dining.longitude,
        info_window: render_to_string(partial: "info_window", locals: { dining: dining })
      }
    end
  end

  def new
    @dining = Dining.new
  end

  def create
    @dining = Dining.new(dining_params)
    @dining.user = current_user

    if @dining.save
      redirect_to dining_path(@dining)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
  end

  def edit
  end

  def update
    @dining.update(dining_params)
    redirect_to dining_path(@dining)
  end

  def destroy
    @dining.destroy
    redirect_to dinings_path
  end

  private

  def set_dining
    @dining = Dining.find(params[:id])
  end

  def dining_params
    params.require(:dining).permit(:name, :address, :date, :time, :category, :comment, :max_guests, :photo)
  end
end
