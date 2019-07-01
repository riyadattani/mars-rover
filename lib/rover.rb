class Rover
  attr_reader :x, :y, :direction, :route
  
  def initialize(instructions_hash)
    @x = instructions_hash[:x]
    @y = instructions_hash[:y]
    @direction = instructions_hash[:direction]
    @route = instructions_hash[:route].split('')
  end
end
