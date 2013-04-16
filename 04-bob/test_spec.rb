require 'minitest/autorun'
require 'minitest/spec'
require 'minitest/pride'
require './bob'

describe 'Bob' do
  before do
    @bob1 = Bob.new
  end

  describe 'response_for' do
    it 'should return "Woah, chill out!" when shouting' do
      response = 'Woah, chill out!'
      @bob1.response_for('SHOUTING').must_equal response
    end

    it 'should return "Sure." when asking a question' do
      response = 'Sure.'
      @bob1.response_for('a question?').must_equal response
    end

    it 'should return "Whatever." when giving a statement' do
      response = 'Whatever.'
      @bob1.response_for('a statement.').must_equal response
    end

    it 'should return "Fine, be that way." by default' do
      response = 'Fine, be that way.'
      @bob1.response_for('').must_equal response
    end
  end

  # Testing tip: The methods below seem to only be used privately,
  # may want to remove them if the implementation is likely to change.
  describe 'question?' do
    it 'should check to see if the input ends with a "?".' do
      @bob1.question?('Hello?').must_equal true
    end
  end

  describe 'statement?' do
    it 'should have have a string input longer than 0' do
      @bob1.statement?('At least 1').must_equal true
    end
  end

  describe 'shouting?' do
    it 'should have all uppercase characters' do
      @bob1.shouting?('HELLO').must_equal true
    end
  end
end