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

  def test_is_guess_correct()
    assert_equal(true, @game.is_guess_correct("a"))
  end

  def test_is_guess_false()
    assert_equal(false, @game.is_guess_correct("b"))
  end

  def test_return_index_number_of_correct_guess()
    assert_equal([2,6], @game.indexs_of_correct_guess("a") )
  end

  def test_update_answers_so_far()
    @game.update_answers_so_far("a")
    assert_equal(["_", "_", "a", "_", "/", "_", "a", "_", "_"], @game.answer_so_far )
  end

  def test_next_turn()
    assert_equal("a", @game.next_turn())
  end

end