class RemoveCompaniesFromRankings < ActiveRecord::Migration
  def change
    remove_column :rankings, :company_id
  end
end
