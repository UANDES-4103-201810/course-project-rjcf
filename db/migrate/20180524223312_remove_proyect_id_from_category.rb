class RemoveProyectIdFromCategory < ActiveRecord::Migration[5.1]
  def change
    remove_column :categories, :proyect_id, :integer
  end
end
