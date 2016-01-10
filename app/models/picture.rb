class Picture < ActiveRecord::Base
  include Rails.application.routes.url_helpers
  belongs_to :gallery
  has_many :picture_products
  has_many :products, through: :picture_products

  has_attached_file :image, styles: {
    full_size: '1200x800>',
    h_thumb: '700x230#',
    thumb:    '500x333>'
  }

  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

  default_scope { order('created_at ASC') }
  scope :prints, -> { where(print: true) }

  def add_prints?
    if self.print == true
      self.products << Product.all
    end
  end

  def image_url
    self.image.url(:full_size)
  end

  def h_thumb_url
    self.image.url(:h_thumb)
  end

  def picture_uri
    picture_path(self)
  end
end
