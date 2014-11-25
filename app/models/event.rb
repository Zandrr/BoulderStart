class Event < ActiveRecord::Base

	def self.getcal
	responseA = HTTParty.get('https://www.googleapis.com/calendar/v3/calendars/mne8qs3476i08o4v9l00urrfqs%40group.calendar.google.com/events?key=AIzaSyBbqZt3S_-Kkk1Umk1R-x6NWPADZhoYHHA&maxResults=2500&orderBy=starttime&singleEvents=true')
	responseB = HTTParty.get('https://www.googleapis.com/calendar/v3/calendars/vhoksdvlkipho5ojf7h1uflhefdisrs2@import.calendar.google.com/events?key=AIzaSyBbqZt3S_-Kkk1Umk1R-x6NWPADZhoYHHA&maxResults=2500&orderBy=starttime&singleEvents=true')
	entries = responseB['items'] + responseA['items']
	entries_array = Array.new
		entries.each do |entry|
			if entry['status'] != 'cancelled' && (Time.parse(entry['start']['dateTime']) < Time.now + 604800*2) && (Time.parse(entry['start']['dateTime']) > Time.now )
				eventname = entry['summary']
				description = entry['description']
				starttime = Time.parse(entry['start']['dateTime'])
				endtime = Time.parse(entry['end']['dateTime']).strftime("%A, %b %d at %I:%M %p")
				location = entry['location']

				entries_array << [eventname, description, starttime, endtime, location]
				entries_array

		#find unique events backend each with index
			end
	end

	entries_array 
end

end