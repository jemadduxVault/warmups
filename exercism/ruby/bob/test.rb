require 'minitest/autorun'
require 'minitest/pride'
require_relative 'bob'

class BobTest < MiniTest::Unit::TestCase
  attr_reader :bob

  def setup
    @bob = Bob.new
  end

  def test_stating_something
    assert_equal 'Whatever.', bob.hey('Tom-ay-to, tom-aaaah-to.')
  end

  def test_shouting
    assert_equal 'Woah, chill out!', bob.hey('WATCH OUT!')
  end

  def test_asking_a_question
    assert_equal 'Sure.', bob.hey('Does this cryogenic chamber make me look fat?')
  end

  def test_talking_forcefully
    assert_equal 'Whatever.', bob.hey("Let's go make out behind the gym!")
  end

  def test_shouting_numbers
    assert_equal 'Woah, chill out!', bob.hey('1, 2, 3 GO!')
  end

  def test_shouting_with_special_characters
    assert_equal 'Woah, chill out!', bob.hey('ZOMG THE %^*@#$(*^ ZOMBIES ARE COMING!!11!!1!')
  end

  def test_silence
    assert_equal 'Fine, be that way.', bob.hey('')
  end

  def test_l33t_sP34k
    assert_equal "133t sp34k", bob.l33t_sP34k("leet speak")
  end

  def test_more_l33t_sP34k
    assert_equal "h3110 w0r1d", bob.l33t_sP34k("hello world")
  end

  def test_lots_of_133t_words1
    assert_equal "bai", bob.l33t_sP34k("bye")
    assert_equal "carp", bob.l33t_sP34k("crap")
    assert_equal "ceak", bob.l33t_sP34k("cake")
    assert_equal "nd", bob.l33t_sP34k("and")
    assert_equal "d00d", bob.l33t_sP34k("dude")
    assert_equal "form", bob.l33t_sP34k("from")
    assert_equal "guise", bob.l33t_sP34k("guys")
    assert_equal "h4x", bob.l33t_sP34k("hacks")
    assert_equal "4x0rz", bob.l33t_sP34k("hacks")
  end

  def test_lots_of_133t_words2
    skip
    assert_equal "hai", bob.l33t_sP34k("hi")
    assert_equal "j00", bob.l33t_sP34k("you")
    assert_equal "kewl", bob.l33t_sP34k("cool")
    assert_equal "liek", bob.l33t_sP34k("like")
    assert_equal "mastah", bob.l33t_sP34k("master")
    assert_equal "max0r", bob.l33t_sP34k("max.")
    assert_equal "max0r", bob.l33t_sP34k("maximum")
    assert_equal "OMG", bob.l33t_sP34k("oh my god")
  end

  def test_lots_of_133t_words3
    skip
    assert_equal "own", bob.l33t_sP34k("own")
    assert_equal "PMGZ", bob.l33t_sP34k("MG")
    assert_equal "ZPMG", bob.l33t_sP34k("MG")
    assert_equal "OLO", bob.l33t_sP34k("LOL")
    assert_equal "ph34", bob.l33t_sP34k("fear")
    assert_equal "pl0x", bob.l33t_sP34k("please")
    assert_equal "powwah", bob.l33t_sP34k("power")
  end

  def test_lots_of_133t_words4
    skip
    assert_equal "pr0n", bob.l33t_sP34k("porn")
    assert_equal "t3h", bob.l33t_sP34k("the")
    assert_equal "secks", bob.l33t_sP34k("sex")
    assert_equal "wen", bob.l33t_sP34k("when")
  end

  def test_lots_of_133t_words5
    skip
    assert_equal "wat", bob.l33t_sP34k("what")
    assert_equal "winnar", bob.l33t_sP34k("winner")
    assert_equal "u", bob.l33t_sP34k("you")
    assert_equal "r", bob.l33t_sP34k("are")
    assert_equal "y", bob.l33t_sP34k("why")
  end

end
