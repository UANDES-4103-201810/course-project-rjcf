class CreateUseRoles < ActiveRecord::Migration[5.1]
  def change
    create_table :use_roles do |t|
      t.string :type
      t.integer :user

      t.timestamps
    end
  end
end
