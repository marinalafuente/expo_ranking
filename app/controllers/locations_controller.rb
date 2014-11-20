class LocationsController < ApplicationController

	def index
		@locations = Location.all
	end
	def show
		@location = Location.find(params[:id])
		@expos = Expo.all
	end

	def postLikes
				if request.xhr?
					@expos = JSON.parse!(request.body.read.to_s)
					Expo.where(name: @expos["name"])[0].update_attributes(like: @expos["like"]) 
					render json: @expos["like"]					
				else
					return 'error'
				end
		end

end