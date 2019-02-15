# Require barby and its dependencies
require 'barby'
require 'barby/barcode/code_128'
require 'barby/outputter/svg_outputter'

# Require FileUtils to recursively create parent directories
# https://stackoverflow.com/a/12617369
require 'fileutils'

# Generates or prints barcode from input
class BarcodeHelper
  puts '== BarcodeHelper loaded'

  # My constants
  FILE_PATH = 'assets/svg/'.freeze
  BARCODE_HEIGHT = 50

  # Prints barcode to SVG file for later usage
  def self.new_barcode(input, subfolder = '')
    puts "== New barcode function loaded, printing #{input} to SVG file..."

    # Raw SVG data, making it uppercase just in case.
    blob = Barby::Code128.new(input.upcase).to_svg(height: BARCODE_HEIGHT)

    # Creates assets/svg/*, as it doesn't exist at this point
    FileUtils.mkdir_p("#{FILE_PATH}#{subfolder}")

    # Save data to file
    File.open("#{FILE_PATH}#{subfolder}#{input}.svg", 'wb') { |f| f.write(blob) }
  end

  # Prints the proper image tag for the SVG
  def self.barcode_svg(input, html_class = '')
    puts "== Barcode SVG loaded, printing #{input} tag..."
    # Returns image tag to page
    "<img data-echo='/#{FILE_PATH}#{input}.svg' alt='#{input}' class='#{html_class}' />"
  end
end
