class RemoveTypeFromPromises < ActiveRecord::Migration[5.1]
  def change
    remove_column :promises, :type, :string
  end
end
