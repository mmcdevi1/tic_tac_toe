require 'spec_helper'

describe Board do 
	let(:board) { Board.new }

	before do 
		@board = []
		9.times do 
			@board << Cell.new(' ')
		end
	end

	context '#initialize' do 
		it 'initializes a new board' do 
			expect(board).to be_an_instance_of Board
		end

		it 'creates a new board with 9 cells' do 
			expect(@board.count).to eq(9)
		end
	end

	context '#full_board?' do 
		it 'checks to see if board is full' do 
			9.times do 
				@board << Cell.new('X')
			end

			expect(board.full_board?).to eq(true)
		end
	end

	context '#clear_board' do 
		it 'clears the board for a new game' do 
			9.times do 
				@board << Cell.new('X')
			end
			board.clear_board
			expect(board.full_board?).to eq(false)
		end
	end
end