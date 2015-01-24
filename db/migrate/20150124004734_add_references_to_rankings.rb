class AddReferencesToRankings < ActiveRecord::Migration
  def change
    add_reference :rankings, :company, index: true
  end
end
