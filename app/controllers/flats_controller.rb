class FlatsController < ApplicationController
  before_action :set_flat, only: [:show, :edit, :update, :destroy]
  def index
    all_flats
  end

  def show
  end

  def new
    @flat = Flat.new
  end

  def create
    @flat.save
  end

  def edit
  end

  def update
    @flat.update(flat_params)

    redirect_to flat_path(@flat)
  end

  def destroy
    @flat.destroy
  end

  private

  def set_flat
    @flat = Flat.find(params[:id])
  end

  def all_flats
    @flats = Flat.all
  end

  def flat_params
    params.require(:flat).permit(:name, :address, :description, :price_per_night, :number_of_guests)
  end
end
