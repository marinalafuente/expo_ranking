class Location < ActiveRecord::Base
	has_many :expos
	def to_param
		"#{id}-#{name.parameterize}"
	end
end

