# frozen_string_literal: true

class Input
  attr_reader :instructions, :plateau_limit

  def initialize(string)
    @string = string
    @instructions = []
    @plateau_limit = []
  end

  def plateau_coordinates
    @plateau_limit << process_plateau_cordinates
  end

  def create_instructions
    i = 1
    while i <= @string.count("\n")
      @instructions << process_string(i)
      i += 2
    end
  end

  private

  def process_string(i)
    {
      x: split_by_line[i].split(' ')[0].to_i,
      y: split_by_line[i].split(' ')[1].to_i,
      direction: split_by_line[i].split(' ')[2],
      route: split_by_line[i + 1]
    }
  end

  def process_plateau_cordinates
    {
      max_x: split_by_line[0].split(' ')[0].to_i,
      max_y: split_by_line[0].split(' ')[1].to_i
    }
  end

  def split_by_line
    @string.split(/\n/)
  end
end
