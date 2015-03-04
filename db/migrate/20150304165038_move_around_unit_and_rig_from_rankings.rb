class MoveAroundUnitAndRigFromRankings < ActiveRecord::Migration
  def change
    remove_column :rankings, :unit_id
    add_reference :rankings, :rig, index: true
  end
end
