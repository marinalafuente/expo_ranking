class LocationsController < ApplicationController

	def index
		@locations = Location.all
	end
	def show
		@location = Location.find(params[:id])
		@expos = Expo.all
	end
end