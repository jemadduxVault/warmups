class Allergies
  attr_reader :score

  def initialize(score)
    @score = score
  end

  def allergic_to?
    score
  end

  def list
    allergy_list = []
    allergies = {1 => "eggs", 2 => "peanuts", 4 => "shellfish",
      8 => "strawberries", 16 => "tomatoes", 32 => "chocolate",
      64 => "pollen", 128 => "cats"}
    allergy_list << "eggs" if score.odd?
    if allergies[score] != nil && score != 1
      allergy_list << allergies[score]
    end
    allergy_list << "peanuts" if score == 3
    allergy_list
  end

end

