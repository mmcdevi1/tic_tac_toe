require './cell.rb'

class Board
	attr_accessor :array

	WINNING_COMBINATIONS = [[1,2,3], [4,5,6], [7,8,9], [1,4,7], [2,5,8], [3,6,9], [1,5,9], [3,5,7]]

	def initialize
		@array = []

		9.times do 
			array << Cell.new(" ")
		end

		@array = array.each_slice(3).to_a
	end

	def draw_board
		system 'clear'
		puts " #{array[0][0]} | #{array[0][1]} | #{array[0][2]} "
		puts "-----------"
		puts " #{array[1][0]} | #{array[1][1]} | #{array[1][2]} "
		puts "-----------"
		puts " #{array[2][0]} | #{array[2][1]} | #{array[2][2]} "
	end

	def mark_board(position, marker)
		coordinates[position].mark_cell(marker)
	end

	def full_board?
		# Check to see if there is a tie game. 
		array.flatten.select { |i| i.occupied? }.count == 9
	end

	def clear_board
		array.flatten.each { |i| i.value = " " }
	end

	def empty_cells(position)
		coordinates[position].empty?
	end

	def winning_conditions?(marker)
		WINNING_COMBINATIONS.each do |row|
			return true if coordinates[row[0]].value == marker && coordinates[row[1]].value == marker && coordinates[row[2]].value == marker
		end
		false
	end

	# private 

	def coordinates
		hash = {
			1 => array[0][0],
			2 => array[0][1],
			3 => array[0][2],
			4 => array[1][0],
			5 => array[1][1],
			6 => array[1][2],
			7 => array[2][0],
			8 => array[2][1],
			9 => array[2][2]
		}
	end
end







































