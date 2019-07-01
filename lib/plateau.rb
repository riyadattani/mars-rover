# frozen_string_literal: true

class Plateau
  attr_reader :max_x, :max_y

  def initialize(max_x, max_y)
    @x_origin = 0
    @y_origin = 0
    @max_x = max_x
    @max_y = max_y
  end
end
