require_relative 'lib/player'
require_relative 'lib/board'


def play_game
  choices = [1, 2, 3, 4, 5, 6, 7, 8, 9]
  display_board = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
  eval_board = [[0, 0, 0], [0, 0, 0], [0, 0, 0]]
  player1 = Player.new('X', 1)
  player2 = Player.new('O', -1)
  game_board = Board.new
  game_plays = 0
  win = false
  game_board.show_board(display_board)
  until win == true do
    answer1 = player1.get_choice(choices)
    game_board.eval_game(display_board, eval_board, choices, answer1, player1.letter, player1.amount)
    game_plays += 1
    if game_board.evaluate(eval_board, [3, -3])
      win = true
      puts "#{player1.letter} wins!"
      return
    end
    if game_plays == 9
      win = true
      puts "Draw!"
      return
    end
    answer2 = player2.get_choice(choices)
    game_board.eval_game(display_board, eval_board, choices, answer2, player2.letter, player2.amount)
    game_plays += 1
    if game_board.evaluate(eval_board, [3, -3])
      win = true
      puts "#{player2.letter} wins!"
      return
    end
  end
end

play_game