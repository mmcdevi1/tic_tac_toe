require 'spec_helper'

describe Cell do 
	let(:cell) { Cell.new(' ') }

	context '#intialize' do 
		it 'initalizes a cell' do 
			expect(cell).to be_an_instance_of Cell
		end

		it "initalizes the value of Cell" do
			expect(cell.value).to eq(' ')
		end
	end

	context '#to_s' do 
		it 'overides to_s with the @value' do 
			expect(cell.to_s).to eq(' ')
		end
	end

	context '#mark_cell(marker)' do 
		it 'marks the cell with the players value' do 
			cell.mark_cell('X')
			expect(cell.value).to eq('X')
		end
	end

	context '#empty?' do 
		it 'checks if cell is empty' do 
			expect(cell.empty?).to eq(true)
		end
	end

	context '#occupied?' do 
		it 'should be false for :cell' do 
			expect(cell.occupied?).to eq(false)
		end

		it 'should be true for an occupied cell' do
			cell_occupied = Cell.new('X')
			expect(cell_occupied.occupied?).to eq(true)
		end
	end
end