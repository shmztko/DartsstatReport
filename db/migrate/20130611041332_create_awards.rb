class CreateAwards < ActiveRecord::Migration
  def change
    create_table :awards do |t|
      t.references :record
      t.string :award_name
      t.integer :award_count

      t.timestamps
    end
    add_index :awards, :record_id
  end
end
