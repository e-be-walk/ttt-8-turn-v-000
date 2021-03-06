
board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} \n-----------\n #{board[3]} | #{board[4]} | #{board[5]} \n-----------\n #{board[6]} | #{board[7]} | #{board[8]} "
end


def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  index = input_to_index(user_input)
  index

  if valid_move?(board, index) == true
    move(board, index, value = "X")
    display_board(board)
  else
    puts "Please enter 1-9:\n"
    turn(board)
  end
  display_board(board)
end

def valid_move?(board, index)
  if index.between?(0,8) && !position_taken?(board, index)
    return true
  else
    return false
  end
end

def position_taken?(board, index)
  !(board[index] == " " || board[index] == "")

  if board[index] == "X" || board[index] == "O"
    return true
  elsif board[index] == " "
    return false
  else board[index] == nil
    return false
  end
end


def input_to_index(user_input)
  index = user_input.to_i - 1
  index
end

def move(board, index, value = "X")
  board[index] = value
end
