class RenameEmails < ActiveRecord::Migration
  def change
  	change_column :scrapes, :emails, :url
  end
end
