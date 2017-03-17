class AddColumnsToUser < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :biography, :string
    add_column :users, :education, :string
    add_column :users, :phoneNum, :string
    add_column :users, :birthDate, :datetime
    add_column :users, :availabilityBegin, :datetime
    add_column :users, :availabilityEnd, :datetime
  end
end
