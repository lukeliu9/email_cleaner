class ChangeEmailfromIntegertoText < ActiveRecord::Migration
  def change
  	change_column :scrapes, :emails, :text
  end
end
