class CreateUserTraitRelationships < ActiveRecord::Migration
  def change
    create_table :user_trait_relationships do |t|
      t.integer :user_id
      t.integer :trait_id

      t.timestamps null: false
    end
  end
end
