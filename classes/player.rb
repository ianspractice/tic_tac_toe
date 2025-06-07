class Player
  attr_reader :letter
  
  @@display_board = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
  
  

  def initialize(l)
    @letter = l
  end

  def get_choice(array)
    puts "Choose a box by entering its number."
    choice = gets.chomp.to_i
    until array.include?(choice)
     puts "Please choose an availalbe number"
     choice = gets.chomp.to_i
    end
    return choice
  end

  def show_board
    puts "#{@@display_board[0][0]} | #{@@display_board[0][1]} | #{@@display_board[0][2]}
#{@@display_board[1][0]} | #{@@display_board[1][1]} | #{@@display_board[1][2]}
#{@@display_board[2][0]} | #{@@display_board[2][1]} | #{@@display_board[2][2]}"
  end

  def board 
    puts @@display_board
  end
end

