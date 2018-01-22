def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  return user_input.to_i - 1
end

def valid_move?(board, index)
  if position_taken?(board, index) || index < 0 || index >= board.length
    return false
  else
    return true
  end
end

def position_taken?(board, index)
  if board.include?(nil) || board[index] == "" || board[index] == " "
    return false
  else
    return true
  end
end

def move(board, pos, char)
  board[pos] = char
end

def turn(board)
  puts "Please enter 1-9:"
  
  index = input_to_index(gets.strip)
  
  valid_move?(board, index)
end
