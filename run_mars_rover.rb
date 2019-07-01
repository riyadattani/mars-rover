
require './lib/mars_rover.rb'

## Acceptance criteria met
mars_rover = Mars_rover.new
mars_rover.instruct("5 5 \n1 2 N \nLMLMLMLMM \n3 3 E \n MMRMMRMRRM")
mars_rover.parse_instructions
# output of final location of rovers
puts mars_rover.launch_rovers

print "---\n"

## Another example
mars_rover_2 = Mars_rover.new
#to change the instructions, add your own numbers in the string below
mars_rover_2.instruct("50 50 \n20 40 N \nLMLMLMLMMRRMMM \n15 30 E \n MMRMMRMRRMLMMRMM")
mars_rover_2.parse_instructions
# output of final location of rovers
puts mars_rover_2.launch_rovers
