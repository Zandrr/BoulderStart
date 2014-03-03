class Event < ActiveRecord::Base

	def self.getcal
	#response = HTTParty.get('http://www.google.com/calendar/feeds/colorado.edu_mdpltf14q21hhg50qb3e139fjg@group.calendar.google.com/public/full?alt=json&orderby=starttime&max-results=15&singleevents=true&sortorder=ascending&futureevents=true')
	response = HTTParty.get('http://www.google.com/calendar/feeds/mne8qs3476i08o4v9l00urrfqs@group.calendar.google.com/public/full?alt=json&orderby=starttime&max-results=30&singleevents=true&sortorder=ascending&futureevents=true')
	entries = response['feed']['entry']
	entries_array = Array.new

	entries.each do |entry|
		eventname = entry['title']['$t']
		description = entry['content']['$t']
		starttime = Time.parse(entry['gd$when'][0]['startTime']).strftime("%A, %b %d at %I:%M %p")
		endtime = Time.parse(entry['gd$when'][0]['endTime']).strftime("%A, %b %d at %I:%M %p")
		location = entry['gd$where'][0]['valueString']

		entries_array << [eventname, description, starttime, endtime, location]
	end
	entries_array
end

end
