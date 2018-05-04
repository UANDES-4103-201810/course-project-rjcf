class CreateUserProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :user_projects do |t|
      t.integer :user
      t.integer :proyect

      t.timestamps
    end
  end
end
