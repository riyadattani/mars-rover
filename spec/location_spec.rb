# frozen_string_literal: true

require 'location'

describe Location do
  describe '#turn_right' do
    it 'change the direction from north to east' do
      location = Location.new(0, 0, 'N')
      location.turn_right
      expect(location.direction).to eq('E')
    end

    it 'change the direction from east to south' do
      location = Location.new(0, 0, 'E')
      location.turn_right
      expect(location.direction).to eq('S')
    end

    it 'change the direction from south to west' do
      location = Location.new(0, 0, 'S')
      location.turn_right
      expect(location.direction).to eq('W')
    end

    it 'change the direction from west to north' do
      location = Location.new(0, 0, 'W')
      location.turn_right
      expect(location.direction).to eq('N')
    end
  end

  describe '#turn_left' do
    it 'change the direction from north to west' do
      location = Location.new(0, 0, 'N')
      location.turn_left
      expect(location.direction).to eq('W')
    end

    it 'change the direction from east to north' do
      location = Location.new(0, 0, 'E')
      location.turn_left
      expect(location.direction).to eq('N')
    end

    it 'change the direction from south to east' do
      location = Location.new(0, 0, 'S')
      location.turn_left
      expect(location.direction).to eq('E')
    end

    it 'change the direction from west to south' do
      location = Location.new(0, 0, 'W')
      location.turn_left
      expect(location.direction).to eq('S')
    end
  end

  describe '#move' do
    it 'y should increase by one if facing north' do
      location = Location.new(0, 0, 'N')
      location.move
      expect(location.x).to eq(0)
      expect(location.y).to eq(1)
    end

    it 'y should decrease by one if facing south' do
      location = Location.new(0, 2, 'S')
      location.move
      expect(location.x).to eq(0)
      expect(location.y).to eq(1)
    end

    it 'x should increase by one if facing east' do
      location = Location.new(0, 0, 'E')
      location.move
      expect(location.x).to eq(1)
      expect(location.y).to eq(0)
    end

    it 'x should decrease by one if facing west' do
      location = Location.new(2, 0, 'W')
      location.move
      expect(location.x).to eq(1)
      expect(location.y).to eq(0)
    end
  end
end
