class LocationsController < ApplicationController

	def index
		@locations = Location.all
	end
	def show
		@location = Location.find(params[:id])
		#@expos = Expo.all

		@expo = Expo.find(params[:id])
		@voteResult = @expo.votes.where(vote_flag: true).count - @expo.votes.where(vote_flag: false).count 
		
	end
end