class CreateExpos < ActiveRecord::Migration
  def change
    create_table :expos do |t|
    	t.string :name
    	t.string :location
      t.timestamps
    end
  end
end
