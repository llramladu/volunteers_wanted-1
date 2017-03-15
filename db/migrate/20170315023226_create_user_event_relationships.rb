class CreateUserEventRelationships < ActiveRecord::Migration
  def change
    create_table :user_event_relationships do |t|
      t.integer :user_id
      t.integer :event_id

      t.timestamps null: false
    end
  end
end
