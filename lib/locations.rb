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
    '01A001': %w[a z],
    '01A002': %w[a z],
    '01A003': %w[a z],
    '01A004': %w[a z],
    '01A005': %w[a z],
    '01A006': %w[a z],
    '01A007': %w[a z],
    '01A008': %w[a z],
    '01A009': %w[a z],
    '01A010': %w[a z],
    '01A011': %w[a z],
    '01A012': %w[a z],
    '01A013': %w[a z],
    '01A014': %w[a z],
    '01A015': %w[a z],
    '01B001': %w[a r],
    '01B002': %w[a r],
    '01C400': %w[a l],
    '01D001': %w[a z],
    '01D002': %w[a z],
    '01D003': %w[a z],
    '01D004': %w[a z],
    '01D005': %w[a z],
    '01D006': %w[a z],
    '01D007': %w[a z],
    '01F500': %w[a t],
    '01M600': %w[a d],
    '01P700': %w[a a],
    '99B100': %w[a g],
    '99B101': %w[a g],
    '99B102': %w[a g],
    '99B103': %w[a g],
    '99B104': %w[a g],
    '99B105': %w[a g],
    '99B106': %w[a g],
    '99B107': %w[a g],
    '99B108': %w[a g],
    '99B109': %w[a g],
    '99B110': %w[a g],
    '99B111': %w[a g],
    '99B112': %w[a g],
    '99B113': %w[a g],
    '99B114': %w[a g],
    '99B115': %w[a g],
    '99B116': %w[a g],
    '99B117': %w[a g],
    '99B118': %w[a g],
    '99B119': %w[a g],
    '99B120': %w[a g],
    '99B121': %w[a g],
    '99B122': %w[a g],
    '99B123': %w[a g],
    '99B124': %w[a g],
    '99B125': %w[a g],
    '99B126': %w[a g],
    '99B127': %w[a g],
    '99B128': %w[a g],
    '99B129': %w[a g],
    '99B130': %w[a g],
    '99B131': %w[a g],
    '99B132': %w[a g]
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
      # This is probably bad, but I'm gonna try nesting loops...
      # This is a range based loop generated from one of the ['a', 'z'] arrays,
      # because certain locations go from A to Z and some go A to G.
      (room[1][0]..room[1][1]).each do |letter|
        # Makes the letter uppercase permanently, and pushes it to the array
        locations.push("#{PREFIX}#{room[0]}#{letter.upcase!}01#{SUFFIX}")
      end
    end

    # Return array to page
    locations
  end
end
