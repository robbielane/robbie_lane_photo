class GalleriesController < ApplicationController
  before_action :authenticate!, only: [:new, :create, :edit, :update]
  def index
    @galleries = Gallery.all
  end

  def show
    @gallery = Gallery.find(params[:id])
  end

  def edit
    @gallery = Gallery.find(params[:id])
  end


  def update
    
  end

end
