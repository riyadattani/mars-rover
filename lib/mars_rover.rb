class Mars_rover
  attr_reader :instructions_string

  def initialize
    @instructions_string = ''
  end

  def instruct(string)
    @instructions_string = string
  end
end
