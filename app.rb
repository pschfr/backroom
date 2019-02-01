# Load gems from vendor/bundle
require 'bundler/setup'

# Load the gems
require 'sinatra'

# Require my helpers
require_relative 'lib/barcode'
require_relative 'lib/locations'

# On '/' page, do this...
get '/' do
  # Gets location from query parameter, or load in L01A001A01 if not present.
  @loc = params['loc'] || '01A001A01'
  @loc.upcase!

  # Render views/index.erb
  erb :index
end
