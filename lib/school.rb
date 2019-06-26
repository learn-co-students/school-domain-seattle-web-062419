  require 'pry'

  class School

    attr_accessor :roster, :student_name, :school_name

  def initialize(school_name)
    @school_name = school_name
    @student_name = student_name
    @roster = {}

  end

  def roster
    @roster
  end

  def add_student(student_name, grade)
    if @roster[grade]
      @roster[grade] << student_name
    else
      @roster[grade] = []
      @roster[grade] << student_name
    end
  end

  def grade(number)
    @roster[number]
  end

  def sort
    @roster.each do |key, value|
      value.sort!
  end
 end
end
