class CreateWishlists < ActiveRecord::Migration[5.1]
  def change
    create_table :wishlists do |t|
      t.integer :proyect

      t.timestamps
    end
  end
end
