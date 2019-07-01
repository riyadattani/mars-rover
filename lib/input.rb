class Input
  def initialize(string)
    @string = string
  end

  def plateau_coordinates
    @string.split(/\n/)[0]
  end
end
