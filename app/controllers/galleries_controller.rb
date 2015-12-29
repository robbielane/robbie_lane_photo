class GalleriesController < ApplicationController
  before_action :authenticate!, only: [:new, :create, :edit, :update, :destroy]
  before_action :find_gallery, only: [:show, :edit, :update, :destroy]
  def index
    @galleries = Gallery.all
  end

  def show
  end

  def edit
  end


  def update
    if @gallery.update(gallery_params)
      flash[:notice] = "Successfully updated #{@gallery.name}"
      redirect_to admin_path
    else
      flash.now[:error] = "Something went wrong :/"
      render :edit
    end
  end

  def destroy
    @gallery.pictures.each { |picture| picture.destroy }
    @gallery.destroy
    redirect_to :back
  end

  private

  def gallery_params
    params.require(:gallery).permit(:name, :location)
  end

  def find_gallery
    @gallery = Gallery.find(params[:id])
  end

end
