class CreateRecords < ActiveRecord::Migration[7.0]
  def change
    create_table :records do |t|
      t.string :level
      t.string :segment
      t.string :score_type
      t.float :score
      t.string :competition
      t.date :date_achieved

      t.timestamps
    end
  end
end
