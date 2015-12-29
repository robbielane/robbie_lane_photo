class AdminController < ApplicationController
  before_action :authenticate!

  def index
    @galleries = Gallery.all
  end
end
