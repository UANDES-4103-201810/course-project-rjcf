class RemoveTypeFromUserFundProjects < ActiveRecord::Migration[5.1]
  def change
    remove_column :user_fund_projects, :type, :string
  end
end
