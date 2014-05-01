class Event < ActiveRecord::Base

	def self.getcal
	responseA = HTTParty.get('http://www.google.com/calendar/feeds/mne8qs3476i08o4v9l00urrfqs@group.calendar.google.com/public/full?alt=json&orderby=starttime&max-results=15&singleevents=true&sortorder=ascending&futureevents=true')
	responseB = HTTParty.get('http://www.google.com/calendar/feeds/e254hmc3995a6m45a09sj5oaj1danqjn@import.calendar.google.com/public/full?alt=json&orderby=starttime&max-results=15&singleevents=true&sortorder=ascending&futureevents=true')
	entries = responseA['feed']['entry'] + responseB['feed']['entry']
	entries_array = Array.new

	entries.each do |entry|
		eventname = entry['title']['$t']
		description = entry['content']['$t'].html_safe
		starttime = Time.parse(entry['gd$when'][0]['startTime'])
		endtime = Time.parse(entry['gd$when'][0]['endTime']).strftime("%A, %b %d at %I:%M %p")
		location = entry['gd$where'][0]['valueString']

		entries_array << [eventname, description, starttime, endtime, location]
	end
	entries_array
end

end








