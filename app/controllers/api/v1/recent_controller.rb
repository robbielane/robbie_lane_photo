class Api::V1::RecentController < Api::V1::BaseController

  def index
    @pictures = Picture.unscoped.order('created_at DESC').limit(3)
    respond_with(@pictures) do |format|
      format.json do
        render json: @pictures.to_json(
        only: [:id, :name, :description, :created_at],
        methods: [:image_url, :h_thumb_url, :picture_uri]
        )
      end
    end
  end
end
