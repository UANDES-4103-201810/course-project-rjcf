class AddTipoToPromise < ActiveRecord::Migration[5.1]
  def change
    add_column :promises, :tipo, :string
  end
end
