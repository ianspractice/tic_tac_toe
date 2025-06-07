def delete_choice(array, element)
  array.delete(element)
  array
end

def replace(array, answer, letter)
  case answer
  when 1
    array[0][0] = letter
  when 2
    array[0][1] = letter
  when 3
    array[0][2] = letter
  when 4
    array[1][0] = letter
  when 5
    array[1][1] = letter
  when 6
    array[1][2] = letter
  when 7
    array[2][0] = letter
  when 8
    array[2][1] = letter
  when 9
    array[2][2] = letter
  end
end

def show_board(display_board)
    puts "#{display_board[0][0]} | #{display_board[0][1]} | #{display_board[0][2]}
#{display_board[1][0]} | #{display_board[1][1]} | #{display_board[1][2]}
#{display_board[2][0]} | #{display_board[2][1]} | #{display_board[2][2]}"
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
 

def evaluate(array, sum_array)
  case 
  when sum_array.include?(array[0].sum)
  return true
  when sum_array.include?(array[1].sum)
  return true
  when sum_array.include?(array[2].sum)
  return true
  when sum_array.include?(array[0][0] + array[1][0] + array[2][0])
  return true
  when sum_array.include?(array[0][1] + array[1][1] + array[2][1])
  return true
  when sum_array.include?(array[0][2] + array[1][2] + array[2][2])
  return true
  when sum_array.include?(array[0][0] + array[1][1] + array[2][2])
  return true
  when sum_array.include?(array[0][2] + array[1][1] + array[2][0])
  return true
  else
    return false
  end
end