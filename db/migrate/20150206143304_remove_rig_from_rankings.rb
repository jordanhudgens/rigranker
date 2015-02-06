class RemoveRigFromRankings < ActiveRecord::Migration
  def change
    remove_column :rankings, :rig_id, :integer
  end
end
