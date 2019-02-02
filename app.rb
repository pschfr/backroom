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

# On '/location/*', do this...
get '/location/*' do
  # Render the single barcode template
  erb :barcode, :locals => { :loc => request.path_info.gsub!('/location/', '') }
end

# Get anything from /docs
get '/docs/*' do
  # Renders the proper file based on route
  erb :"#{request.path_info}"
end
