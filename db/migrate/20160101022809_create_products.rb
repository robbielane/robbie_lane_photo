class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.text :medium
      t.text :size
      t.integer :price

      t.timestamps null: false
    end
  end
end
