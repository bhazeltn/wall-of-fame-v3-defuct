class AddSkaterIdToRecords < ActiveRecord::Migration[7.0]
  def change
    add_column :records, :skater_id, :int
  end
end
