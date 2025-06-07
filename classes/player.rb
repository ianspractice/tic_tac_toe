class Player
  attr_reader :letter, :amount
  
  @@display_board = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]

  def initialize(l, a)
    @letter = l
    @amount = a
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

end
