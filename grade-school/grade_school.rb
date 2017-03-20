class School

  def initialize
    @grades = []
  end

  def students(grade)

    current_grade = nil

    @grades.each do |g|
      if g.grade == grade
        current_grade = g
      end
    end

    if current_grade.nil?
      return []
    else
      current_grade.students
    end

  end

  def add(name, grade)

    current_grade = nil

    @grades.each do |g|
      if g.grade == grade
        current_grade = g
      end
    end

    if current_grade.nil?
      current_grade = Grade.new(grade)
      @grades.push current_grade
    end

    current_grade.add name

  end

  def students_by_grade
    classes = []

    @grades.sort!

    @grades.each do |g|
      classes.push g.to_hash
    end

    classes
  end

  private

  @grades = []

end

class Grade

  include Comparable
  attr_reader :grade

  def <=>(another_grade)
    if self.grade < another_grade.grade
      -1
    elsif self.grade > another_grade.grade
      1
    else
      0
    end
  end

  def initialize(grade)
    @grade = grade
    @students = []
  end

  def students
    return @students.sort
  end

  def add(name)
    @students.push name
  end

  def to_hash
    {grade: @grade, students: students}
  end

end

module BookKeeping
  VERSION = 3
end
