class AddBiographyToOrganizations < ActiveRecord::Migration
  def change
  	add_column :organizations, :biography, :text
  end
end
