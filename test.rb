require_relative 'module1'


def play_game(letter1, letter2)
  choices = [1, 2, 3, 4, 5, 6, 7, 8, 9]
  display_board = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
  eval_board = [[0, 0, 0], [0, 0, 0], [0, 0, 0]]
  win = false
  until win == true do
   show_board(display_board)
    answer1 = get_choice(choices)
    replace(display_board, answer1, letter1)
    replace(eval_board, answer1, -1)
    delete_choice(choices, answer1)
    show_board(display_board)
    eval = evaluate(eval_board, -3)
    if eval == true
      win = true
      return
    end
    answer2 = get_choice(choices)
    replace(display_board, answer2, letter2)
    replace(eval_board, answer2, 1)
    delete_choice(choices, answer2)
  end
end



play_game('X', "O")