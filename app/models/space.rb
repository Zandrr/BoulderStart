
class Space < ActiveRecord::Base

	def self.getspace
		response = HTTParty.get('https://www.pivotdesk.com/api/v1/spaces?market=boulder&limit=100')
		spaces_array = Array.new
		response.each do |space|
			name = space['company']['name']
			photo_url = space['photos'].first[1]['listing_full']
			address = space['address']['address_1']
			description = space['description']
			url = space['url']
			spaces_array << [name, photo_url, address, description, url]
		end
		spaces_array
	end
	
end
