class Mars_rover
  attr_reader :instructions_string, :parse_instructions, :output

  def initialize
    @instructions_string = ''
    @parsed_instructions = []
    @output = ''
  end

  def instruct(string)
    @instructions_string = string
  end

  def parse_instructions(parser = Input_parser.new(@instructions_string))
    parser.create_instructions
    @parsed_instructions = parser.instructions
  end

  def launch_rovers
    @parsed_instructions.each do |instruction|
      final_location = launch_rover(instruction)
      @output == '' ? @output += final_location : @output += "\n#{final_location}"
    end
    @output
  end

  def launch_rover(instruction)
    rover = Rover.new(instruction)
    rover.travel
    rover.report_location
  end
end
