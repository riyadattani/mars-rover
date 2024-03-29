# frozen_string_literal: true
require_relative 'input'
require_relative 'rover'

class Mars_rover
  attr_reader :instructions_string

  def initialize
    @instructions_string = ''
    @parsed_instructions = []
    @output = ''
  end

  def instruct(string)
    @instructions_string = string
  end

  def parse_instructions(parser = Input.new(@instructions_string))
    parser.create_instructions
    @parsed_instructions = parser.instructions
  end

  def launch_rovers
    @parsed_instructions.each do |instruction|
      @final_location = launch_rover(instruction)
      final_output
    end
    @output
  end

  private

  def launch_rover(instruction)
    rover = Rover.new(instruction)
    rover.travel
    rover.report_location
  end

  def final_output
    @output += @output == '' ? @final_location : "\n#{@final_location}"
  end
end
