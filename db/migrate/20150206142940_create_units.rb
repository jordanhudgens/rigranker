class CreateUnits < ActiveRecord::Migration
  def change
    create_table :units do |t|
      t.references :company, index: true
      t.integer :number

      t.timestamps
    end
  end
end
