class Expo < ActiveRecord::Base
	has_many :votes
	belongs_to :location

	def votes_count
		votes.where(vote_flag: true).count - votes.where(vote_flag: false).count 
	end
end
