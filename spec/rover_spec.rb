require 'rover'

describe Rover do
  subject(:rover) { described_class.new(x: 1, y: 2, direction: 'N', route: 'LMLMLMLMM') }
  it 'receives instructions when initializing' do
    expect(rover.x).to eq(1)
    expect(rover.y).to eq(2)
    expect(rover.direction).to eq('N')
    expect(rover.route).to eq(%w[L M L M L M L M M])
  end
end
