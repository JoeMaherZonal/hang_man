require 'minitest/autorun'
require_relative('../game')

class TestGame < Minitest::Test

  def setup()
    @game = Game.new("star wars")
  end

  def test_split_phrase()
    assert_equal( ["s","t","a","r", " ","w","a","r","s"], @game.split_phrase )
  end

  def test_initiate_answer_so_far()
    assert_equal(["_", "_", "_", "_", "/", "_", "_", "_", "_"], @game.answer_so_far)
  end

end