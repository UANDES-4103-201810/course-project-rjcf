class RemoveFieldnameFromUsers < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :name, :integer
  end
end
