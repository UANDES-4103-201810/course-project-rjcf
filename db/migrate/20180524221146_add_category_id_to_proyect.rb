class AddCategoryIdToProyect < ActiveRecord::Migration[5.1]
  def change
    add_column :proyects, :category_id, :integer
  end
end
