class AddColumnsToOrganizations < ActiveRecord::Migration
  def change
    add_column :organizations, :email, :string
    add_column :organizations, :password, :string
    add_column :organizations, :name, :string
    add_column :organizations, :phoneNum, :string
    add_column :organizations, :url, :string
    add_column :organizations, :location, :string
    add_column :organizations, :size, :integer
  end
end
