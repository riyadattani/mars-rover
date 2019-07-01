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
end
