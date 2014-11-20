class ExposController < ApplicationController
		
	def show
		@expo = Expo.find(params[:id])
	end
end
