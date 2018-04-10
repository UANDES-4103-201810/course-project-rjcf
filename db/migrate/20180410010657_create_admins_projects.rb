class CreateAdminsProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :admins_projects do |t|

      t.timestamps
    end
  end
end
