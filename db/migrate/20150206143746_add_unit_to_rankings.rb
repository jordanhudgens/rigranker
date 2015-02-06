class AddUnitToRankings < ActiveRecord::Migration
  def change
    add_reference :rankings, :unit, index: true
  end
end
