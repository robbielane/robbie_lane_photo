class CreatePictureProducts < ActiveRecord::Migration
  def change
    create_table :picture_products do |t|
      t.references :picture, index: true, foreign_key: true
      t.references :product, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
