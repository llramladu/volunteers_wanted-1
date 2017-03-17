class CreateEventPositionRelationships < ActiveRecord::Migration
  def change
    create_table :event_position_relationships do |t|
      t.integer :event_id
      t.integer :position_id

      t.timestamps null: false
    end
  end
end
