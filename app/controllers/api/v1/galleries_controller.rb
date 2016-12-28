class Api::V1::GalleriesController < Api::V1::BaseController

  def index
    @galleries = Gallery.all
    respond_with(@galleries) do |format|
      format.json do
        render json: @galleries.to_json(
        only: [:id, :name, :location, :created_at],
        methods: [:cover]
        )
      end
    end
  end
end
