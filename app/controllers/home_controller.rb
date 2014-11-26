class HomeController < ApplicationController
	
def index
    @exposition = Expo.all
end

	# def data
	# 	 @series = [{
 #            type: 'pie',
 #            name: 'Exposition ranking',
 #            data: [
 #                ['Prado Museum',   45.0],
 #                ['Thyssen Museum',       26.8],
 #                {
 #                    name: 'MNCARS',
 #                    y: 12.8,
 #                    sliced: true,
 #                    selected: true
 #                },
 #                ['Caixa Forum',    8.5],
 #                ['Mapfre Found',     6.2],
 #                ['Juan March Found',   0.7]
 #            ]
 #        }].to_json

 #        render json: @series
 #    end

    def data
        @data = []
        Expo.all.map  do |expo| 
            counter = expo.positive_counter - expo.negative_counter
            counter = 0 if counter < 0
            @data << [expo.name.to_s, counter.to_f+1]
        end
        puts @data.to_json
        render json: {chartdata: @data}
    end
end

