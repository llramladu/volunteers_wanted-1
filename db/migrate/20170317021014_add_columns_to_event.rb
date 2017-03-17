class AddColumnsToEvent < ActiveRecord::Migration
  def change
    add_column :events, :endDate, :datetime
    add_column :events, :volunteersNeeded, :integer
    add_column :events, :compensation, :string
    add_column :events, :location, :string
    add_column :events, :reocurring, :boolean
    add_column :events, :contact, :string
  end
end
