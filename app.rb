# Load gems from vendor/bundle
require 'bundler/setup'

# Load the gems
require 'sinatra'

# Require my helpers
require_relative 'lib/barcode'

# On '/' page, do this...
get '/' do
  # Generates a barcode from location, then returns it to the page
  @barcode = BarcodeHelper.barcode('L01A001A01')

  # Render views/index.erb
  erb :index
end
