class CreateUserOrganizationRelationships < ActiveRecord::Migration
  def change
    create_table :user_organization_relationships do |t|
      t.integer :user_id
      t.integer :organization_id

      t.timestamps null: false
    end
  end
end
