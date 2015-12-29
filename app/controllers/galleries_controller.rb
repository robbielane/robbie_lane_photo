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
    @gallery = Gallery.find(params[:id])
    if @gallery.update(gallery_params)
      flash[:notice] = "Successfully updated #{@gallery.name}"
      redirect_to admin_path
    else
      flash.now[:error] = "Something went wrong :/"
      render :edit
    end
  end

  private

  def gallery_params
    params.require(:gallery).permit(:name, :location)
  end

end
