class BandsController < ApplicationController

  def index
    @bands = Band.all
  end

  def show
    @band = Band.find(params[:id])
    @concerts_played = @band.concerts_played
  end

  def new
    @band = Band.new
  end

  def create
    @band = Band.new(band_params)
    if @band.save
      redirect_to @band, flash: { success: "Band successfully created!" }
    else
      render :new
    end
  end

  def edit
    @band = Band.find(params[:id])
  end

  def update
    @band = Band.find(params[:id])
    if @band.update(band_params)
      redirect_to @band, flash: { success: "Band successfully updated!" }
    else
      render :edit
    end
  end

  def destroy
    @band = Band.find(params[:id])
    @band.destroy
    redirect_to bands_url, flash: { success: "Band successfully deleted!" }
  end

private

  def band_params
    params.require(:band).permit(:name)
  end

end
