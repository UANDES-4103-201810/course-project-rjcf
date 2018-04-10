class CreatePaymenMethods < ActiveRecord::Migration[5.1]
  def change
    create_table :paymen_methods do |t|
      t.integer :card_number
      t.string :bank
      t.string :cardholder_name

      t.timestamps
    end
  end
end
