class PrintsController < ApplicationController
  def index
    @prints = Picture.prints
  end
end
