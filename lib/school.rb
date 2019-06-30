class School

  attr_accessor :roster
  attr_reader :name

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(grade, student)
    @roster[student.to_a] = grade
  end
end
