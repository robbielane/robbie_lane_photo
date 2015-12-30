class PrintsController < ApplicationController
  def index
    @prints = Picture.prints
  end

  def show
    @print = Picture.find(params[:id])
  end
end
