class PictureProduct < ActiveRecord::Base
  belongs_to :picture
  belongs_to :product
end
