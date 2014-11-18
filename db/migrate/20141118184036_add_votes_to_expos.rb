class AddVotesToExpos < ActiveRecord::Migration
  def change
  	add_column :expos, :votes, :integer
  end
end
