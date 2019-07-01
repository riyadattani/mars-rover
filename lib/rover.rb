# frozen_string_literal: true

require_relative 'location'
# require_relative 'plateau'

class Rover
  attr_reader :x, :y, :direction, :route

  def initialize(instructions_hash)
    @x = instructions_hash[:x]
    @y = instructions_hash[:y]
    @direction = instructions_hash[:direction]
    @route = instructions_hash[:route].split('')
  end

  def report_location
    "#{@x} #{@y} #{@direction}"
  end

  def travel
    @location = location_object
    execute_route(@location)
    new_location(@location.x, @location.y, @location.direction)
  end

  private

  def location_object
    Location.new(@x, @y, @direction)
  end

  def execute_route(location)
    @route.each do |command|
      case command
      when 'L'
        @location.turn_left
      when 'R'
        @location.turn_right
      when 'M'
        @location.move
      end
    end
  end

  def new_location(x, y, direction)
    @x = x
    @y = y
    @direction = direction
  end
end
