class CreateUserFundProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :user_fund_projects do |t|
      t.string :type
      t.integer :user_id
      t.integer :proyect_id

      t.timestamps
    end
  end
end
