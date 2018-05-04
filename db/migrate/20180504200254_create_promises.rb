class CreatePromises < ActiveRecord::Migration[5.1]
  def change
    create_table :promises do |t|
      t.integer :proyect
      t.string :type
      t.integer :amount
      t.string :include

      t.timestamps
    end
  end
end
