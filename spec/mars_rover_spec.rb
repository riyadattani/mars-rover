# frozen_string_literal: true

require 'mars_rover'

describe Mars_rover do
  before(:each) do
    @mars_rover = Mars_rover.new
  end

  describe '#instruct' do
    it 'should receive and save the string' do
      @mars_rover.instruct("5 5\n1 2 N\nLMLMLMLMM\n3 3 E\nMMRMMRMRRM")
      expect(@mars_rover.instructions_string).to eq("5 5\n1 2 N\nLMLMLMLMM\n3 3 E\nMMRMMRMRRM")
    end
  end

  describe '#parse_instructions' do
    let(:input_double) do
      double :input, create_instructions: nil, instructions: [
        {
          direction: 'N',
          x: 1,
          y: 2,
          route: 'LMLMLMLMM'
        },
        {
          direction: 'E',
          x: 3,
          y: 3,
          route: 'MMRMMRMRRM'
        }
      ]
    end
    it 'parses instructions' do
      @mars_rover.instruct("5 5\n1 2 N\nLMLMLMLMM\n3 3 E\nMMRMMRMRRM")
      expect(@mars_rover.parse_instructions(input_double)).to eq([
                                                                   {
                                                                     direction: 'N',
                                                                     x: 1,
                                                                     y: 2,
                                                                     route: 'LMLMLMLMM'
                                                                   },
                                                                   {
                                                                     direction: 'E',
                                                                     x: 3,
                                                                     y: 3,
                                                                     route: 'MMRMMRMRRM'
                                                                   }
                                                                 ])
    end
  end

  describe '#launch_rovers' do
    let(:input_double) do
      double :input, create_instructions: nil, instructions: [
        {
          direction: 'N',
          x: 1,
          y: 2,
          route: 'LMLMLMLMM'
        },
        {
          direction: 'E',
          x: 3,
          y: 3,
          route: 'MMRMMRMRRM'
        }
      ]
    end
    it 'launch each rover and return final location' do
      @mars_rover.instruct("5 5\n1 2 N\nLMLMLMLMM\n3 3 E\nMMRMMRMRRM")
      @mars_rover.parse_instructions(input_double)
      expect(@mars_rover.launch_rovers).to eq("1 3 N\n5 1 E")
    end
  end
end
