class CreateWorks < ActiveRecord::Migration
  def change
    create_table :works do |t|
      t.string :description

      t.timestamps null: false
    end
  end
end
