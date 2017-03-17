class CreateEventTraitRelationships < ActiveRecord::Migration
  def change
    create_table :event_trait_relationships do |t|
      t.integer :event_id
      t.integer :trait_id

      t.timestamps null: false
    end
  end
end
