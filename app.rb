# Load gems from vendor/bundle
require 'bundler/setup'

# Load the gems
require 'sinatra'

# Require my helpers
require_relative 'lib/barcode'
require_relative 'lib/locations'

# On '/' page, do this...
get '/' do
  # Render views/index.erb
  erb :index
end

# On '/dpci' page, do this...
get '/dpci' do
  # Render views/dpci.erb
  erb :dpci, locals: { num: params['dpci'] }
end

# On '/location/*', do this...
get '/location/:loc' do
  # Render the single barcode template, sends the location to the page
  erb :barcode, locals: { loc: params['loc'] }
end

# Get anything from /docs
get '/docs/:name' do
  # Renders the proper file based query parameter
  erb :"docs/#{params['name']}"
end
