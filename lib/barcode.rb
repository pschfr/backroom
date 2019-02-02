# Require barby and its dependencies
require 'barby'
require 'barby/barcode/code_39'
require 'barby/outputter/svg_outputter'

# My constants
FILE_PATH = 'assets/svg/'.freeze
BARCODE_HEIGHT = 50

# Generate barcode from location
class BarcodeHelper
  puts '== BarcodeHelper loaded'

  # Prints barcode to SVG file for later usage
  def self.new_barcode(location)
    puts "== New barcode function loaded, printing #{location} to SVG file..."

    # Raw SVG data
    blob = Barby::Code39.new(location).to_svg(height: BARCODE_HEIGHT)

    # Save data to file
    File.open("#{FILE_PATH}#{location}.svg", 'wb') { |f| f.write(blob) }
  end

  # Prints the proper image tag for the SVG
  def self.barcode_svg(location, html_class = '')
    puts "== Barcode SVG loaded, printing #{location} tag..."
    # Returns image tag to page
    "<img data-echo='/assets/svg/#{location}.svg' alt='#{location}' class='#{html_class}' />"
  end
end
