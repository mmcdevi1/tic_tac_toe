require 'spec_helper'

describe Player do 
	let(:player) { Player.new('X') }

	context '#intitialize' do 
		it 'intitializes a player' do 
			expect(player).to be_an_instance_of Player
		end

		it 'sets a marker "X" to the player' do 
			expect(player.marker).to eq('X')
		end
	end
end

describe Human do 
	let(:human) { Human.new('X') }

	context '#intitialize' do 
		it 'intitializes a human player' do 
			expect(human).to be_an_instance_of Human
		end

		it 'sets a marker "X" to the human' do 
			expect(human.marker).to eq('X')
		end
	end
end

describe Computer do 
	let(:computer) { Computer.new('O') }

	context '#intitialize' do 
		it 'intitializes a computer player' do 
			expect(computer).to be_an_instance_of Computer
		end

		it 'sets a marker "O" to the computer' do 
			expect(computer.marker).to eq('O')
		end
	end
end