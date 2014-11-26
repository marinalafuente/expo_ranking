class LocationsController < ApplicationController

	def index
		@locations = Location.all
	end

	def show
		@location = Location.find(params[:id])
		@exposition = @location.expos.all
		@expo = Expo.find(params[:id])

	end

	def vote
				if request.xhr?
					@expo = Expo.find(params[:id])

					vote = params[:vote] == "up"
				
				  @expo.votes.create vote_flag: vote
					
					render json: {}				
				else
					return 'error'
				end	 	
	 	end
end