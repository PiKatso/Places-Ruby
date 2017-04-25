require 'sinatra'
require 'sinatra/reloader'
also_reload('lib/**/*.rb')
require './lib/places'
require 'pry'

get('/') do
  @places = Places.places_list()
  erb(:index)
end

post('/places') do
  destination = params.fetch("destination")
  my_places = Places.new(destination)
  my_places.places_save()
  erb(:output)
end
