require_relative 'module1'


def play_game(letter)
  choices = [1, 2, 3, 4, 5, 6, 7, 8, 9]
  display_board = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
  eval_board = [[0, 0, 0], [0, 0, 0], [0, 0, 0]]
   show_board(display_board)
  answer = get_choice(choices)
    replace(display_board, answer, letter)
    replace(eval_board, answer, -1)
    show_board(display_board)
    delete_choice(choices, answer)
end



play_game('X')

