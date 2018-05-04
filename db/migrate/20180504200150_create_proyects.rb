class CreateProyects < ActiveRecord::Migration[5.1]
  def change
    create_table :proyects do |t|
      t.string :name
      t.integer :user

      t.timestamps
    end
  end
end
