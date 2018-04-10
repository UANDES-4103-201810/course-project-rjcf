class CreateFundTypes < ActiveRecord::Migration[5.1]
  def change
    create_table :fund_types do |t|
      t.string :type
      t.integer :amount
      t.string :username

      t.timestamps
    end
  end
end
