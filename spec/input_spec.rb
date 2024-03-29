# frozen_string_literal: true

require 'input'

describe Input do
  before(:each) do
    @input = Input.new("5 5\n1 2 N\nLMLMLMLMM\n3 3 E\nMMRMMRMRRM")
  end

  describe '#plateau_coordinates' do
    it 'separates the plateau coordinates' do
      @input.plateau_coordinates
      expect(@input.plateau_limit).to eq([{ max_x: 5, max_y: 5 }])
    end
  end

  describe '#instructions' do
    it 'identifies the instructions' do
      @input.create_instructions
      expect(@input.instructions).to eq([
                                          {
                                            x: 1,
                                            y: 2,
                                            direction: 'N',
                                            route: 'LMLMLMLMM'
                                          },
                                          {
                                            x: 3,
                                            y: 3,
                                            direction: 'E',
                                            route: 'MMRMMRMRRM'
                                          }
                                        ])
    end
  end
end
