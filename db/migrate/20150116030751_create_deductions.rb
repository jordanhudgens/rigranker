class CreateDeductions < ActiveRecord::Migration
  def change
    create_table :deductions do |t|
      t.string :title
      t.decimal :value

      t.timestamps
    end
  end
end
