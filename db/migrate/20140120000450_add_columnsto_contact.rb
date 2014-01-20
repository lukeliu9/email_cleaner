class AddColumnstoContact < ActiveRecord::Migration
  def change
  	add_column :contacts, :first_name, :string
  	add_column :contacts, :last_name, :string
  	add_column :contacts, :email, :string
  	add_column :contacts, :scrape_id, :integer
  end
end
