# frozen_string_literal: true

class Location
  attr_reader :direction, :y, :x

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

  def initialize(x = 0, y = 0, direction = 'N')
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

  def move
    case @direction
    when 'N'
      @y += 1
    when 'S'
      @y -= 1
    when 'E'
      @x += 1
    when 'W'
      @x -= 1
    end
  end
end
