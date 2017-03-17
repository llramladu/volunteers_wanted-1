class CreateVolunteers < ActiveRecord::Migration
  def change
    create_table :volunteers do |t|
      t.string :description

      t.timestamps null: false
    end
  end
end
