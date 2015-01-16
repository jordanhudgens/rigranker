class RemoveUserFromCompanies < ActiveRecord::Migration
  def change
    remove_column :companies, :user_id, :integer
    add_reference :users, :company, index: true
  end
end
