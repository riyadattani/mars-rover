# frozen_string_literal: true

require 'plateau'

describe Plateau do
  it 'creates the grid size' do
    plateau = Plateau.new(5, 5)
    expect(plateau.max_x).to eq(5)
    expect(plateau.max_y).to eq(5)
  end
end
