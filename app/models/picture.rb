class Picture < ActiveRecord::Base
  belongs_to :gallery
  has_attached_file :image, styles: {
    full_size: '1200x800>',
    h_thumb: '600x200#',
    thumb:    '500x333>'
  }
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end
