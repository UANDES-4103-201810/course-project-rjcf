class AddColumnFixedamountToProyects < ActiveRecord::Migration[5.1]
  def change
    add_column :proyects, :fixedamount, :integer
  end
end
