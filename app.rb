# Load gems from vendor/bundle
require 'bundler/setup'

# Load the gems
require 'sinatra'

# On '/' page, do this...
get '/' do
  # Render views/index.erb
  erb :index
end
