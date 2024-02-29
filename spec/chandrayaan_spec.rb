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
    
    context 'rotation' do
      it 'should turns left from North to West' do
        chandrayaan = Chandrayaan.new
        chandrayaan.execute_commands(['l'])
        expect(chandrayaan.position).to eq([0, 0, 0])
        expect(chandrayaan.direction).to eq('W')
      end

      it 'should turns right from North to East' do
        chandrayaan = Chandrayaan.new
        chandrayaan.execute_commands(['r'])
        expect(chandrayaan.position).to eq([0, 0, 0])
        expect(chandrayaan.direction).to eq('E')
      end

      it 'should turns left multiple times' do
        chandrayaan = Chandrayaan.new
        chandrayaan.execute_commands(['l', 'l'])
        expect(chandrayaan.position).to eq([0, 0, 0])
        expect(chandrayaan.direction).to eq('S')
      end

      it 'should turns right multiple times' do
        chandrayaan = Chandrayaan.new
        chandrayaan.execute_commands(['r', 'r', 'r'])
        expect(chandrayaan.position).to eq([0, 0, 0])
        expect(chandrayaan.direction).to eq('W')
      end
    end

    context 'angle changes' do
      it 'should turn upward from North to Up' do
        chandrayaan = Chandrayaan.new
        chandrayaan.execute_commands(['u'])
        expect(chandrayaan.direction).to eq('Up')
        expect(chandrayaan.position).to eq([0, 0, 0])
      end

      it 'should turn upward from South to Up' do
        chandrayaan = Chandrayaan.new
        chandrayaan.execute_commands(['l', 'l', 'u'])
        expect(chandrayaan.direction).to eq('Up')
        expect(chandrayaan.position).to eq([0, 0, 0])
      end

      it 'should turn upward from East to Up' do
        chandrayaan = Chandrayaan.new
        chandrayaan.execute_commands(['r', 'u'])
        expect(chandrayaan.direction).to eq('Up')
        expect(chandrayaan.position).to eq([0, 0, 0])
      end

      it 'should move forward and turn up' do
        chandrayaan = Chandrayaan.new
        chandrayaan.execute_commands(['f', 'u'])
        expect(chandrayaan.direction).to eq('Up')
        expect(chandrayaan.position).to eq([0, 1, 0])
      end

      it 'should move backward and turn up' do
        chandrayaan = Chandrayaan.new
        chandrayaan.execute_commands(['b', 'u'])
        expect(chandrayaan.direction).to eq('Up')
        expect(chandrayaan.position).to eq([0, -1, 0])
      end

      it 'should turn downward from North to Down' do
        chandrayaan = Chandrayaan.new
        chandrayaan.execute_commands(['d'])
        expect(chandrayaan.direction).to eq('Down')
        expect(chandrayaan.position).to eq([0, 0, 0])
      end

      it 'should turn downward from South to Down' do
        chandrayaan = Chandrayaan.new
        chandrayaan.execute_commands(['r', 'r', 'd'])
        expect(chandrayaan.direction).to eq('Down')
        expect(chandrayaan.position).to eq([0, 0, 0])
      end

      it 'should turn downward from East to Down' do
        chandrayaan = Chandrayaan.new
        chandrayaan.execute_commands(['r', 'd'])
        expect(chandrayaan.direction).to eq('Down')
        expect(chandrayaan.position).to eq([0, 0, 0])
      end

      it 'should move forward and turn down' do
        chandrayaan = Chandrayaan.new
        chandrayaan.execute_commands(['f', 'd'])
        expect(chandrayaan.direction).to eq('Down')
        expect(chandrayaan.position).to eq([0, 1, 0])
      end

      it 'should move backward and turn down' do
        chandrayaan = Chandrayaan.new
        chandrayaan.execute_commands(['b', 'd'])
        expect(chandrayaan.direction).to eq('Down')
        expect(chandrayaan.position).to eq([0, -1, 0])
      end
    end
  end
end
