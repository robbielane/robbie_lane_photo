class PicturesController < ApplicationController
  before_action :authenticate!, only: [:new, :create, :edit, :update, :destroy]

  def show
    @picture = Picture.find(params[:id])
  end

  def new
    @gallery = Gallery.find(params[:gallery])
    @picture = @gallery.pictures.new
  end

  def create
    @gallery = Gallery.find(params[:gallery])
    @picture = @gallery.pictures.new(picture_params)
    if @picture.save
      flash[:notice] = "Successfully added #{@picture.name} to #{@gallery.name}"
      redirect_to edit_gallery_path(@gallery)
    else
      flash.now[:error] = "Something went wrong :/"
      render :new
    end
  end

  def update
    @picture = Picture.find(params[:id])
    if @picture.update(picture_params)
      flash[:notice] = "Successfully updated #{@picture.name}"
      redirect_to :back
    else
      flash.now[:error] = "Something went wrong :/"
      render :edit
    end
  end

  def destroy
    @picture = Picture.find(params[:id])
    @picture.destroy
    redirect_to :back
  end

  private

  def picture_params
    params.require(:picture).permit(:name, :description, :print, :image)
  end
end
