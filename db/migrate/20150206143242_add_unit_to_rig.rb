class AddUnitToRig < ActiveRecord::Migration
  def change
    add_reference :rigs, :unit, index: true
  end
end
