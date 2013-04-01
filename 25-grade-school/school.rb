class School
  attr_accessor :school

  def initialize(input)
    @school = {}
  end

  def grade(grade)
    school[grade]
  end

  def add(name, grade)
    if school[grade] == nil
      school[grade] = [name]
    else
      school[grade] << name
    end
  end

  def sort
    new_db = {}
    (0..12).each do |x|
      if school[x] != nil
        new_db[x] = school[x].reverse
      end
    end
    new_db
  end

  def db
    school
  end

end
