# Generates all possible backroom locations from listed constraints
# Example location: L01A001A011
class LocationHelper
  puts '== LocationHelper loaded'
  # My constants
  # All locations start with L
  PREFIX = 'L'.freeze
  # These are the individual rooms (aisles in the back, plus individual rooms
  # like the freezer and electronics room), and the range of letters they have.
  ROOMS = {
    '01A001': ['a', 'z'],
    '01A002': ['a', 'z'],
    '01A003': ['a', 'z'],
    '01A004': ['a', 'z'],
    '01A005': ['a', 'z'],
    '01A006': ['a', 'z'],
    '01A007': ['a', 'z'],
    '01A008': ['a', 'z'],
    '01A009': ['a', 'z'],
    '01A010': ['a', 'z'],
    '01A011': ['a', 'z'],
    '01A012': ['a', 'z'],
    '01A013': ['a', 'z'],
    '01A014': ['a', 'z'],
    '01A015': ['a', 'z'],
    '01C400': ['a', 'l'],
    '01D001': ['a', 'z'],
    '01D002': ['a', 'z'],
    '01D003': ['a', 'z'],
    '01D004': ['a', 'z'],
    '01D005': ['a', 'z'],
    '01D006': ['a', 'z'],
    '01D007': ['a', 'z'],
    '01F500': ['a', 't'],
    '01M600': ['a', 'd'],
    '01P700': ['a', 'a'],
    '99B100': ['a', 'g'],
    '99B101': ['a', 'g'],
    '99B102': ['a', 'g'],
    '99B103': ['a', 'g'],
    '99B104': ['a', 'g'],
    '99B105': ['a', 'g'],
    '99B106': ['a', 'g'],
    '99B107': ['a', 'g'],
    '99B108': ['a', 'g'],
    '99B109': ['a', 'g'],
    '99B110': ['a', 'g'],
    '99B111': ['a', 'g'],
    '99B112': ['a', 'g'],
    '99B113': ['a', 'g'],
    '99B114': ['a', 'g'],
    '99B115': ['a', 'g'],
    '99B116': ['a', 'g'],
    '99B117': ['a', 'g'],
    '99B118': ['a', 'g'],
    '99B119': ['a', 'g'],
    '99B120': ['a', 'g'],
    '99B121': ['a', 'g'],
    '99B122': ['a', 'g'],
    '99B123': ['a', 'g'],
    '99B124': ['a', 'g'],
    '99B125': ['a', 'g'],
    '99B126': ['a', 'g'],
    '99B127': ['a', 'g'],
    '99B128': ['a', 'g'],
    '99B129': ['a', 'g'],
    '99B130': ['a', 'g'],
    '99B131': ['a', 'g'],
    '99B132': ['a', 'g']
  }.freeze
  # All locations all must end with a random character as well.
  SUFFIX = 1

  # Called later by user
  def self.all_locations
    puts '== all_locations loaded'

    # New temp array for locations
    locations = []

    # Loop over rooms, load locations into array
    ROOMS.each do |room|
      # p room[0]
      # This is probably bad, but I'm gonna try nesting loops...
      # This is a range based loop generated from one of the ['a', 'z'] arrays,
      # because certain locations go from A to Z and some go A to G.
      (room[1][0]..room[1][1]).each do |letter|
        # Makes the letter uppercase permanently
        p letter.upcase!
        # Pushes it to later location array
        locations.push("#{PREFIX}#{room[0]}#{letter}01#{SUFFIX}")
      end
    end

    # Return array to page
    locations
  end
end
