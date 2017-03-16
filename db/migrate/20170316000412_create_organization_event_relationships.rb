class CreateOrganizationEventRelationships < ActiveRecord::Migration
  def change
    create_table :organization_event_relationships do |t|
      t.integer :organization_id
      t.integer :event_id

      t.timestamps null: false
    end
  end
end
