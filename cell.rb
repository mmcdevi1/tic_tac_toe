class Cell
	attr_accessor :value

	def initialize(value)
		@value = value
	end

	def to_s
		"#{value}"
	end

	def mark_cell(marker)
		self.value = marker
	end

	def empty?
		self.value == " "
	end

	def occupied?
		self.value != " "
	end
end