require 'input'

describe Input do
  describe '#plateau_coordinates' do
    it 'separates the plateau coordinates' do
      input = Input.new("5 5\n1 2 N\nLMLMLMLMM\n3 3 E\nMMRMMRMRRM")
      expect(input.plateau_coordinates).to eq('5 5')
    end
  end
end
