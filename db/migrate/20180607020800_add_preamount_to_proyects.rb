class AddPreamountToProyects < ActiveRecord::Migration[5.1]
  def change
    add_column :proyects, :preamount, :integer
  end
end
