class CreateUserVolunteerRelationships < ActiveRecord::Migration
  def change
    create_table :user_volunteer_relationships do |t|
      t.integer :user_id
      t.integer :volunteer_id

      t.timestamps null: false
    end
  end
end
