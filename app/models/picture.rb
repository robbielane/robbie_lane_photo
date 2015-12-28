class Picture < ActiveRecord::Base
  has_attached_file :image, styles: {
    h_thumb: '600x200#',
    thumb:    '500x333>'
  }
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end
