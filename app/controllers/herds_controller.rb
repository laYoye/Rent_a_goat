class HerdsController < ApplicationController

  def index
    # @herds = Herd.all
    @herds = Herd.geocoded # returns herds with coordinates

    @markers = @herds.map do |herd|
      {
        lat: herd.latitude,
        lng: herd.longitude
      }
    end
  end

  def show
    @herd = Herd.find(params[:id])
  end

  def new
    @herd = Herd.new
    authorize @herd
  end

  def create
    @herd = Herd.new(herd_params)
    @herd.user = current_user
    if @herd.save
      flash[:notice] = "Bravo #{current_user.email} ! Le troupeau a été crée avec succès"
      redirect_to herds_path
    else
      render :new
    end
  end

  def destroy
    @herd = Herd.find(params[:id])
    @herd.destroy
    redirect_to  new_herd_path :notice => "Votre troupeau a été supprimé"
  end

private

  def herd_params
    params.require(:herd).permit(:name, :address, :goat_number, :photo, :about)
  end

end
