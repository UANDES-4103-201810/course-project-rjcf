class CreateUserProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :user_projects do |t|
      t.timestamp :start_date
      t.timestamp :finish_date
      t.string :name
      t.string :favorite

      t.timestamps
    end
  end
end
