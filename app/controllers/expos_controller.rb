class ExposController < ApplicationController
before_filter :parse_facebook_cookies

def parse_facebook_cookies
  @facebook_cookies ||= Koala::Facebook::OAuth.new(YOUR_APP_ID, YOUR_SECRET).get_user_info_from_cookie(cookies)
end

	def show
		@expo = Expo.find(params[:id])
		@voteRequest = Vote.valid?(request.remote_ip, @expo.id)
	  #Vote.where(ip_address: request.remote_ip).where(expo_id: params[:id]).empty? 		
		#@voteResult = @expo.votes.where(vote_flag: true).count - @expo.votes.where(vote_flag: false).count 
		@access_token = @facebook_cookies["access_token"]
  	@graph = Koala::Facebook::GraphAPI.new(@access_token)		
	end

		def vote
				if request.xhr?
					@expo = Expo.find(params[:id])
					if Vote.valid?(request.remote_ip, @expo.id)					
					vote = params[:vote] == "up"				
				  @expo.votes.create vote_flag: vote, ip_address: request.remote_ip		
				    
				  #@time = @expo.votes.find(params[:created_at])
				  #@current_time = ::Time.zone ? ::Time.zone.now.to_datetime : ::Time.now.to_datetime				
  				render json: {}						
					else 
						head :too_many_requests
					end
				end	 	
	 	end
end
