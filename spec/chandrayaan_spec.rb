require_relative '../chandrayaan.rb'

RSpec.describe Chandrayaan do

  describe '#chandrayaan' do
    context 'movement' do
      it 'should move forward in the North direction' do
        chandrayaan = Chandrayaan.new
        chandrayaan.execute_commands(['f'])
        expect(chandrayaan.position).to eq([0, 1, 0])
        expect(chandrayaan.direction).to eq('N')
      end

      it 'should move backward in the South direction' do
        chandrayaan = Chandrayaan.new
        chandrayaan.execute_commands(['b'])
        expect(chandrayaan.position).to eq([0, -1, 0])
        expect(chandrayaan.direction).to eq('N') 
      end

      it 'should move forward and backward multiple steps' do
        chandrayaan = Chandrayaan.new
        chandrayaan.execute_commands(['f', 'f', 'b', 'b'])
        expect(chandrayaan.position).to eq([0, 0, 0])
        expect(chandrayaan.direction).to eq('N')
      end
    end
  end
end
