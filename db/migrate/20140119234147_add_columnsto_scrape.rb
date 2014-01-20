class AddColumnstoScrape < ActiveRecord::Migration
  def change
  	add_column :scrapes, :school, :string
  	add_column :scrapes, :role, :string
  	add_column :scrapes, :emails, :integer
  end
end
