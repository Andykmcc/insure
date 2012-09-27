class CreateOwnerships < ActiveRecord::Migration
  def change
    create_table :ownerships do |t|
      t.integer :user_id
      t.integer :product_id
      t.datetime :created_at

      t.timestamps
    end
  end
end
