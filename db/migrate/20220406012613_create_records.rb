class CreateRecords < ActiveRecord::Migration[7.0]
  def change
    create_table :records do |t|
      t.integer :skater_id
      t.integer :level_id
      t.string :segment
      t.string :score_type
      t.float :score
      t.integer :competition_id
      t.date :date_achieved

      t.timestamps
    end
  end
end
