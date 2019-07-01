require 'mars_rover'

describe Mars_rover do
  before(:each) do
    @mars_rover = Mars_rover.new
  end

  describe "#instruct" do
    it "should receive and save the string" do
      @mars_rover.instruct("5 5\n1 2 N\nLMLMLMLMM\n3 3 E\nMMRMMRMRRM")
      expect(@mars_rover.instructions_string).to eq("5 5\n1 2 N\nLMLMLMLMM\n3 3 E\nMMRMMRMRRM")
    end
  end
end
