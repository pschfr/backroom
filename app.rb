# Load gems from vendor/bundle
require 'bundler/setup'

# Load the gems
require 'sinatra'
require 'sinatra/multi_route'

# Require my helpers
require_relative 'lib/barcode'
require_relative 'lib/locations'

# On '/' page, do this...
get '/' do
  # Render views/index.erb
  erb :index
end

# On '/dpci' or '/location/*' page, do this...
get '/dpci', '/location/:loc' do
  # Render the single barcode template, sends the location to the page
  erb :dpci, locals: { num: params['loc'] || params['dpci'] }
end

# Get anything from /docs
get '/docs/:name' do
  # Renders the proper file based query parameter
  erb :"docs/#{params['name']}"
end
