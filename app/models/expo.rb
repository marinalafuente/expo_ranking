class Expo < ActiveRecord::Base
	has_many :votes
	belongs_to :location
end
