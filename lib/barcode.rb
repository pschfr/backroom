# Require barby and its dependencies
require 'barby'
require 'barby/barcode/code_39'
require 'barby/outputter/svg_outputter'

# Generate barcode from location
class BarcodeHelper
  puts '== BarcodeHelper loaded'
  def self.barcode(location)
    puts "== Barcode function loaded, printing #{location}"
    Barby::Code39.new(location)
  end
end
