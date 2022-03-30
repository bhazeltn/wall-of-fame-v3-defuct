class AddRecordsAssociationToSkater < ActiveRecord::Migration[7.0]
  def self.up
    add_column :skaters, :record_id, :integer
    add_index 'skaters', ['record_id'], :name => 'skater_challenge_id'
  end

  def self.down
    remove_column :skater, :record_id
  end
end
