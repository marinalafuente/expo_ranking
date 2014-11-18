class HomeController < ApplicationController
	def index
		render 'index'
	end

	def data
		 @series = [{
            type: 'pie',
            name: 'Exposition ranking',
            data: [
                ['Prado Museum',   45.0],
                ['Thyssen Museum',       26.8],
                {
                    name: 'MNCARS',
                    y: 12.8,
                    sliced: true,
                    selected: true
                },
                ['Caixa Forum',    8.5],
                ['Mapfre Found',     6.2],
                ['Juan March Found',   0.7]
            ]
        }].to_json

        render json: @series		
	end
end
