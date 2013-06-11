class CreateRecords < ActiveRecord::Migration
  def change
    create_table :records do |t|
      t.references :user
      t.timestamp :played_at

      t.timestamps
    end
    add_index :records, :user_id
  end
end
