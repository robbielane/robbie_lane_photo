class CreateGalleries < ActiveRecord::Migration
  def change
    create_table :galleries do |t|
      t.text :name
      t.text :location

      t.timestamps null: false
    end
  end
end
