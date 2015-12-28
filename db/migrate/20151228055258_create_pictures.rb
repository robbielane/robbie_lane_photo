class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.text :name
      t.text :description
      t.text :image
      t.boolean :print

      t.timestamps null: false
    end
  end
end
