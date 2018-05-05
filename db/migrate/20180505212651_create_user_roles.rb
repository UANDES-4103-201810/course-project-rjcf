class CreateUserRoles < ActiveRecord::Migration[5.1]
  def change
    create_table :user_roles do |t|
      t.string :type
      t.integer :user_id

      t.timestamps
    end
  end
end
