require_relative 'module1'


def play_game(letter)
  choices = [1, 2, 3, 4, 5, 6, 7, 8, 9]
  display_board = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
  win = false
  until win == true
    show_board(display_board)
    puts "What number"
    answer = gets.chomp.to_i
    replace(display_board, answer, letter)
    show_board(display_board)
    delete_choice(choices, answer)
    p choices
  end
end



play_game('X')

