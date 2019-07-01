# frozen_string_literal: true

class Location
  attr_reader :direction

  RIGHT = {
    'N' => 'E',
    'E' => 'S',
    'S' => 'W',
    'W' => 'N'
  }.freeze

  LEFT = {
    'N' => 'W',
    'E' => 'N',
    'S' => 'E',
    'W' => 'S'
  }.freeze

  def initialize(x, y, direction)
    @x = x
    @y = y
    @direction = direction
  end

  def turn_right
    @direction = RIGHT[@direction]
  end

  def turn_left
    @direction = LEFT[@direction]
  end
end
