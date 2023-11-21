class BuildsController < ApplicationController
  def index
    
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def filtre
    @filter_params = {
      :category => "",
      :price_mini => 1,
      :price_maxi => 1000,
      :surface_mini => 50}
  end
end
