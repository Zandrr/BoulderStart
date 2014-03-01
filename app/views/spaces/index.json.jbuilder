json.array!(@spaces) do |space|
  json.extract! space, 
  json.url space_url(space, format: :json)
end