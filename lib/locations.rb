# Generates all possible backroom locations from listed constraints
# Example location: L01A001A011
class LocationHelper
  puts '== LocationHelper loaded'
  # My constants
  PREFIX = 'L'.freeze
  ROOMS = %w[
    01A001
    01A002
    01A003
    01A004
    01A005
    01A006
    01A007
    01A008
    01A009
    01A010
    01A011
    01A012
    01A013
    01A014
    01A015
    01C400
    01D001
    01D002
    01D003
    01D004
    01D005
    01D006
    01D007
    01F500
    01M600
    01P700
    99B100
    99B101
    99B102
    99B103
    99B104
    99B105
    99B106
    99B107
    99B108
    99B109
    99B110
    99B111
    99B112
    99B113
    99B114
    99B115
    99B116
    99B117
    99B118
    99B119
    99B120
    99B121
    99B122
    99B123
    99B124
    99B125
    99B126
    99B127
    99B128
    99B129
    99B130
    99B131
    99B132
  ].freeze
  SUFFIX = 1

  # Called later by user
  def self.all_locations
    puts '== all_locations loaded'

    # New temp array for locations
    locations = []

    # Loop over rooms, load locations into array
    ROOMS.each do |room|
      locations.push("#{PREFIX}#{room}A01#{SUFFIX}")
    end

    # Return array to page
    locations
  end
end
