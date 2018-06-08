class AddColumnDescriptionToProyects < ActiveRecord::Migration[5.1]
  def change
    add_column :proyects, :description, :text
  end
end
