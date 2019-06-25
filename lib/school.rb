class School
    attr_reader :roster
    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student (name, grade)
        if @roster[grade] == nil
            @roster[grade] = [name]
        else
            @roster[grade]<<name
        end
    end

    def grade(level)
        return @roster[level]
    end

    def sort
        @roster.each do |grade, students|
            puts "++++++"
            puts students
            students.sort!
        end
    end
end

h=School.new("place")
h.add_student("a",1)
h.add_student("c",1)
h.add_student("b",1)
puts h.sort