class Picture < ActiveRecord::Base
  has_attached_file :image, styles: {
    fullsize: '1200x800>',
    thumb:    '500x333>'
  }
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end
