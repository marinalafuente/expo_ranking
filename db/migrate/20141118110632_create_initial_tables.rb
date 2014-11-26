class CreateInitialTables < ActiveRecord::Migration
  
  def change
   	
   	create_table "locations", force: true do |t|
	    t.string   "name"
	    t.text  	 "description"
	    t.timestamps
	  end

   create_table "expos", force: true do |t|
	    t.references  "location"
	    t.string   "name"
	    t.text  	 "description"
	    t.integer 	"positive_counter", default: 0
	    t.integer 	"negative_counter", default: 0
	    t.timestamps
	  end	  

	  create_table "votes", force: true do |t|
	    t.references "expo"
	    t.boolean    "vote_flag"
	    t.string		 "ip_address"
	    t.timestamps
  	end
  end
end
