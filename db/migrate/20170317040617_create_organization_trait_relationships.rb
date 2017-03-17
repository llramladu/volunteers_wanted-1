class CreateOrganizationTraitRelationships < ActiveRecord::Migration
  def change
    create_table :organization_trait_relationships do |t|
      t.integer :organization_id
      t.integer :trait_id

      t.timestamps null: false
    end
  end
end
