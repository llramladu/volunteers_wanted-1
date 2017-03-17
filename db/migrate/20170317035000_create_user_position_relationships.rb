class CreateUserPositionRelationships < ActiveRecord::Migration
  def change
    create_table :user_position_relationships do |t|
      t.integer :user_id
      t.integer :position_id

      t.timestamps null: false
    end
  end
end
