# frozen_string_literal: true

require 'rover'

describe Rover do

  before(:each) do
    @rover = Rover.new(x: 1, y: 2, direction: 'N', route: 'LMLMLMLMM')
  end

  it 'receives instructions when initializing' do
    expect(@rover.x).to eq(1)
    expect(@rover.y).to eq(2)
    expect(@rover.direction).to eq('N')
    expect(@rover.route).to eq(%w[L M L M L M L M M])
  end

  it 'reports its current location' do
    expect(@rover.report_location).to eq('1 2 N')
  end

  describe '#travel' do
    it 'rover follows the instructions and reaches the destination' do
      @rover.travel
      expect(@rover.report_location).to eq('1 3 N')
    end

    it 'another rover follows instructions and reaches the destination' do
      @another_rover = Rover.new(x: 3, y: 3, direction: 'E', route: 'MMRMMRMRRM')
      @another_rover.travel
      expect(@another_rover.report_location).to eq('5 1 E')
    end
  end
end
