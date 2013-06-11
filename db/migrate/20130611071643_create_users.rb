class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :card_name
      t.string :login_url

      t.timestamps
    end
  end
end
