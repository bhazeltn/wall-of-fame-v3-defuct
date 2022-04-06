class CreateLevels < ActiveRecord::Migration[7.0]
  def change
    create_table :levels do |t|
      t.string :level
      t.string :discipline
      t.string :age

      t.timestamps
    end
  end
end
