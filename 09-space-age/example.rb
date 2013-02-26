require 'date'
class Age

  attr_reader :seconds
  def initialize(seconds)
    @seconds = seconds
  end

  def years
    previous_birthday.year - year_of_birth
  end

  private

  def born_at
    @born_at ||= Time.now - seconds
  end

  def year_of_birth
    born_at.year
  end

  def previous_birthday
    date = birthday(Date.today.year)
    return date if date < Date.today
    birthday(Date.today.year - 1)
  end

  def birthday(year)
    Date.new(year, born_at.month, born_at.day)
  end
end

require 'minitest/autorun'

class AgeTest < MiniTest::Unit::TestCase

  def test_years
    assert_equal 32, Age.new(1031 * 10**6).years
  end

end

