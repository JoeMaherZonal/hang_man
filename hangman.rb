require_relative('game')

hangman = Game.new("star wars")

lives = 5

while lives > 0
  guess = hangman.next_turn

  if hangman.is_guess_correct(guess)
    hangman.update_answers_so_far(guess)
  else
    lives -= 1
  end
  puts hangman.display_answers_so_far
end
