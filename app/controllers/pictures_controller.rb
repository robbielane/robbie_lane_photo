class PicturesController < ApplicationController
  before_action :authenticate!, only: [:new, :create, :edit, :update]

  def show
    @picture = Picture.find(params[:id])
  end

  def new
    @picture = Picture.new
  end

  def create
    @picture = Picture.new(picture_params)
    if @picture.save
      # Flash
      redirect_to @picture
    else
      # Flash :/
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

  private

  def picture_params
    params.require(:picture).permit(:name, :description, :print, :image)
  end
end
