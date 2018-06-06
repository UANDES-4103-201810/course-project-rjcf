class AddAmountToProyects < ActiveRecord::Migration[5.1]
  def change
    add_column :proyects, :amount, :integer
  end
end
