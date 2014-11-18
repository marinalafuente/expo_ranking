class ChangeTableExpos < ActiveRecord::Migration
  def change
  	remove_column :expos, :location
  	add_column :expos, :location_id, :integer
  end
end
