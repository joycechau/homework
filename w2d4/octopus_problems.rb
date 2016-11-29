# Big O-ctopus and Biggest Fish
#
# A Very Hungry Octopus wants to eat the longest fish in an array of fish.
#
fish = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']
# => "fiiiissshhhhhh"
# Sluggish Octopus
#
# Find the longest fish in O(n^2) time.
# Do this by comparing all fish lengths to all other fish lengths

def sluggish(fish)
  longest_fish = ""
  i = 0
  while i < fish.length
    j = i + 1
    while j < fish.length
      longest_fish = fish[j] if longest_fish.length <= fish[j].length
      j += 1
    end
    i += 1
  end
  longest_fish
end

# puts sluggish(fish)
# Dominant Octopus
#
# Find the longest fish in O(n log n) time. Hint: You saw a sorting
# algorithm that runs in O(n log n) in the Sorting Demo.
# Remember that Big O is classified by the dominant term.

def dominant(fish)
  
end

# Clever Octopus
#
# Find the longest fish in O(n) time. The octopus can hold
# on to the longest fish that you have found so far while stepping
# through the array only once.

def clever(fish)
  longest_fish = ""
  fish.each do |fishy|
    longest_fish = fishy if longest_fish.length < fishy.length
  end
  longest_fish
end

puts clever(fish)


# Dancing Octopus
#
# Full of fish, the Octopus attempts Dance Dance Revolution.
# The game has tiles in the following directions:
#
tiles_array = ["up", "right-up", "right", "right-down", "down",
"left-down", "left",  "left-up" ]
# To play the game, the octopus must step on a tile with her
# corresponding tentacle. We can assume that the octopus's eight
# tentacles are numbered and correspond to the tile direction indices.

# Slow Dance
#
# Given a tile direction, iterate through a tiles array to
# return the tentacle number (tile index) the octopus must move.
# This should take O(n) time.

def slow_dance(direction, tiles)
  tiles.each_with_index do |dir, idx|
    return idx if direction == dir
  end
end

puts slow_dance("up", tiles_array)
puts slow_dance("right-down", tiles_array)
#
# slow_dance("up", tiles_array)
# > 0
#
# slow_dance("right-down", tiles_array)
# > 3


# Constant Dance!
#
# Now that the octopus is warmed up, let's help her dance faster.
# Use a different data structure and write a new function so that
# you can access the tentacle number in O(1) time.
#

def fast_dance(direction, tiles)

end
# fast_dance("up", new_tiles_data_structure)
# > 0
#
# fast_dance("right-down", new_tiles_data_structure)
# > 3
