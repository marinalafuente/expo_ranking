class ExposController < ApplicationController
		
	def show

		@expo = Expo.find(params[:id])
		@voteResult = @expo.votes.where(vote_flag: true).count - @expo.votes.where(vote_flag: false).count 
					
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
