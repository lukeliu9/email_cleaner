class CreateCleaners < ActiveRecord::Migration
  def change
    create_table :cleaners do |t|

      t.timestamps
    end
  end
end
