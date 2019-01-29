# Load gems from vendor/bundle
require 'bundler/setup'

# Load the gems
require 'sinatra'

# Require my helpers
require_relative 'lib/barcode'

# On '/' page, do this...
get '/' do
  # Gets location from query parameter, or load in L01A001A01 if not present.
  @loc = params['loc'] || 'L01A001A01'

  # Render views/index.erb
  erb :index
end
