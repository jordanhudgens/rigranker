class AddRigReferenceToRankings < ActiveRecord::Migration
  def change
    add_reference :rankings, :rig, index: true
  end
end
