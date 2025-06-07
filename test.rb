require_relative 'module1'
require_relative 'classes/player'


def play_game
  choices = [1, 2, 3, 4, 5, 6, 7, 8, 9]
  display_board = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
  eval_board = [[0, 0, 0], [0, 0, 0], [0, 0, 0]]
  win = false
  player1 = Player.new('X')
  player2 = Player.new('O')
  show_board(display_board)
  until win == true do
    answer1 = player1.get_choice(choices)
    replace(display_board, answer1, player1.letter)
    replace(eval_board, answer1, -1)
    delete_choice(choices, answer1)
    show_board(display_board)
    eval = evaluate(eval_board, [3, -3])
    if eval == true
      win = true
      puts "#{player1.letter} wins!"
      return
    end
    answer2 = player2.get_choice(choices)
    replace(display_board, answer2, player2.letter)
    replace(eval_board, answer2, 1)
    delete_choice(choices, answer2)
    eval = evaluate(eval_board, [3, -3])
    show_board(display_board)
    if eval == true
      win = true
      puts "#{player2.letter} wins!"
      return
    end
  end
end

play_game