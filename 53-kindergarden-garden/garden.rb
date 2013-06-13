class Garden
  attr_accessor :garden, :top_row, :bottom_row, :students_init

  def initialize(*args)
    plant_garden(args[0].split("\n"))
    @students_init = (args[1]) if args[1]
  end

  def plant_garden(plants)
    @top_row = letters_to_plants(plants[0].split(""))
    @bottom_row = letters_to_plants(plants[1].split(""))
  end

  def letters_to_plants(letters)
    garden_row = []
    letters.each do |letter|
      garden_row << plants[letter]
    end
    garden_row
  end

  def plants
    {"R" => :radishes, "C" => :clover, "G" => :grass, "V" => :violets}
  end

  def method_missing(*args)
    x, y = students[args[0]]
    top_row[x..y] + bottom_row[x..y]
  end

  def students
    return sort_students if students_init
    {:alice => [0,1], :bob => [2,3], :charlie => [4,5], :david => [6,7], :eve => [8,9], :fred => [10,11], :ginny => [12,13], :harriet => [14,15], :ileana => [16,17], :joseph => [18,19], :kincaid => [20,21], :larry => [22,23]}
  end

  def sort_students
    students_init.sort!
  end

end
