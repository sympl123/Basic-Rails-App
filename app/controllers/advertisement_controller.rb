class AdvertisementController < ApplicationController
  def index
    @ads = Advertisement.all
  end

  def show
    @ads = Advertisement.find(params[:id])
  end
end
