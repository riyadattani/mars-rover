# frozen_string_literal: true

class Plateau
  attr_reader :max_x, :max_y

  def initialize(plateau_limit)
    @x_origin = 0
    @y_origin = 0
    @max_x = plateau_limit[:max_x]
    @max_y = plateau_limit[:max_y]
  end
end
