class Expo < ActiveRecord::Base
	has_many :votes
	belongs_to :location

	def self.chart_data
		Expo.all.map  do |expo| 
			counter = expo.positive_counter - expo.negative_counter
			counter = 0 if counter < 0
			[expo.name, counter]
	  end
	end
end