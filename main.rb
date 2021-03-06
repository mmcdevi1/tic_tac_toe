require 'pry'
require './board.rb'
require './player.rb'

class TicTacToe
	attr_accessor :board, :current_player
	attr_reader :human, :computer

	CHOICES = ['1', '2', '3', '4', '5', '6', '7', '8', '9']

	def initialize	
		@board          = Board.new
		@human          = Human.new("X")
		@computer       = Computer.new("O")
		@current_player = human
		play
	end

	private

	def current_player_chooses
		if current_player == human 
			begin
				space
				puts "Choose a position (1 - 9): "
				position = gets.chomp.to_i
			end until board.empty_cells(position)
		else
			space
			print "Computer is picking"
			5.times do
		    print "."
		    sleep(rand(0.1..1.0))
		  end
			begin
				position = rand(1..9)
				if board.empty_cells(position)
					position
				end 
			end until board.empty_cells(position)
		end
		board.mark_board(position, current_player.marker)
		board.draw_board
	end

	def current_player_is_winner
		board.winning_conditions?(self.current_player.marker)
	end

	def alternate_player
		self.current_player = self.current_player == human ? computer : human
	end

	def winning_statement
		puts current_player == human ? "You are the winner!" : "You lose!"
	end

	def game_is_a_tie?
		board.full_board?
	end

	def play
		loop do 
			board.draw_board
			space
			loop do
				current_player_chooses
				if current_player_is_winner
					winning_statement
					break
				elsif game_is_a_tie?
					puts "Tie game!"
					break
				else
					alternate_player
				end
			end
			print "Will you like to play again? (y / n) "
			response = gets.chomp.downcase
			if response == 'y'
				board.clear_board
			else
				break
			end
		end
	end

	def space
		puts ""
	end
end











