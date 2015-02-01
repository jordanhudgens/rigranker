class DropDeductionsTable < ActiveRecord::Migration
  def change
    drop_table :deductions
  end
end
