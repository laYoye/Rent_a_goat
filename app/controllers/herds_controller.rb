class HerdsController < ApplicationController

  def index
    @herds = Herd.all
  end

  def show
    @herd = Herd.find(params[:id])
  end

  def new
    @herd = Herd.new
    authorize @herd
  end

  def create
    @herd = Herd.find(herd_params)
    if @herd.save
      redirect_to herds_path
    else
      render :new
    end
  end

private

  def herd_params
    params.require(:herd).permit(:name, :address, :goat_number, :photo, :about)
  end

end
