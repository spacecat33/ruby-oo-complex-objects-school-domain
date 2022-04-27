class School

    def initialize(name)
        @name = name
    end

    def name
        @name
    end

    def initialize(roster)
        @roster = {}
    end

    def roster
        @roster
    end

    def add_student(student_name, grade)
        @student_name = student_name
        @grade = grade

        if roster.include?(grade) == false
            @roster[grade] = []
        end
        @roster[grade] << student_name

        #or
        # roster[grade] ||= []      i.e. if roster[grade] == nil or falsee, then set it equal to an empty array
		# roster[grade] << student
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        @roster.each do |grade, student_name|
            @roster[grade] = student_name.sort
        end
    end
end