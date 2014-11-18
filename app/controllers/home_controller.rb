class HomeController < ApplicationController
	def index
		render 'index'
	end

	def data
		 @series = [{
            name: 'Prado Museum',
            data: [0, 9, 4]
        }, {
            name: 'Thyssen Museum',
            data: [10, 7, 3]
        }].to_json

        render json: @series
		
	end
end
