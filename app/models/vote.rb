class Vote < ActiveRecord::Base
belongs_to :expo
after_create :update_expo_votes

scope :recent,      -> { where('created_at > ?', Time.now - 5.hour) }
#scope :recent,      -> { where('created_at > :created_at', created_at: Time.now - 1.hour) }
scope :by_ip_address, ->(ip_address) { where(ip_address: ip_address) }
scope :by_expo_id,  ->(expo_id) { where(expo_id: expo_id)}

def self.valid?(ip_address, expo_id)
 	!recent.by_ip_address(ip_address).by_expo_id(expo_id).exists?
end

#def self.valid?(ip_address)
# !where(ip_address: ip_address).where('created_at > ?', Time.now - 5.hours).exists?
#end

def recent
 	where('created_at > ?', Time.now - 1.hour)
end

private

def update_expo_votes
 	counter = vote_flag ? :positive_counter : :negative_counter
	Expo.increment_counter(counter, expo_id)
end
end