class CreateUserWorkRelationships < ActiveRecord::Migration
  def change
    create_table :user_work_relationships do |t|
      t.integer :user_id
      t.integer :work_id

      t.timestamps null: false
    end
  end
end
