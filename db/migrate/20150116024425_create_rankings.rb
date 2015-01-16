class CreateRankings < ActiveRecord::Migration
  def change
    create_table :rankings do |t|
      t.decimal :score
      t.references :user, index: true
      t.references :company, index: true
      t.date :ranking_for_day

      t.timestamps
    end
  end
end
