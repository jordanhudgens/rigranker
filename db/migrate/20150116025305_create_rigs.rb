class CreateRigs < ActiveRecord::Migration
  def change
    create_table :rigs do |t|
      t.references :company, index: true
      t.integer :number

      t.timestamps
    end
  end
end
