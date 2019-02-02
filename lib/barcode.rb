# Require barby and its dependencies
require 'barby'
require 'barby/barcode/code_39'
require 'barby/outputter/svg_outputter'

# Generates or prints barcode from location
class BarcodeHelper
  puts '== BarcodeHelper loaded'

  # My constants
  FILE_PATH = 'assets/svg/'.freeze
  BARCODE_HEIGHT = 50

  # Prints barcode to SVG file for later usage
  def self.new_barcode(location, subfolder = '')
    puts "== New barcode function loaded, printing #{location} to SVG file..."

    # Raw SVG data, making it uppercase just in case.
    blob = Barby::Code39.new(location.upcase).to_svg(height: BARCODE_HEIGHT)

    # Save data to file
    File.open("#{FILE_PATH}#{subfolder}#{location}.svg", 'wb') { |f| f.write(blob) }
  end

  # Prints the proper image tag for the SVG
  def self.barcode_svg(location, html_class = '')
    puts "== Barcode SVG loaded, printing #{location} tag..."
    # Returns image tag to page
    "<img data-echo='/#{FILE_PATH}#{location}.svg' alt='#{location}' class='#{html_class}' />"
  end
end
