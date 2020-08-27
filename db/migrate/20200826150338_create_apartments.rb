class CreateApartments < ActiveRecord::Migration[6.0]
  def change
    create_table :apartments do |t|
      t.string :title
      t.float :price
      t.float :sqm
      t.integer :numofbed
      t.integer :numofbath
      t.text :picture

      t.timestamps
    end
  end
end
