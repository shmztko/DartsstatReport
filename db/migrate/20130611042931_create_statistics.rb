class CreateStatistics < ActiveRecord::Migration
  def change
    create_table :statistics do |t|
      t.references :record
      t.string :score
      t.integer :number_of_players
      t.integer :game_order
      t.string :game_format
      t.string :game_name

      t.timestamps
    end
    add_index :statistics, :record_id
  end
end
