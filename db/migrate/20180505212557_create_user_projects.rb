class CreateUserProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :user_projects do |t|
      t.integer :user_id
      t.integer :proyect_id

      t.timestamps
    end
  end
end
