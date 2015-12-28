class AddGalleryIdToPictures < ActiveRecord::Migration
  def change
    add_reference :pictures, :gallery, index: true, foreign_key: true
  end
end
