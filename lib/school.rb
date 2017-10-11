class School
	attr_accessor :roster

	def initialize(roster)
		@roster = {}
	end

	def add_student(name, grade)
		if @roster[grade]
			@roster[grade] << name
		else
			@roster[grade] = []
			@roster[grade] << name
		end
	end

	def grade(num)
		if @roster[num]
			return roster[num]
		else
			puts "not here"
		end
	end

	def sort
		@roster.each_value {|students| students.sort!}
	end

end
