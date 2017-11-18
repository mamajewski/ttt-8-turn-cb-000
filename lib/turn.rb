
board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
def display_board(board = ["   ", "   ", "   ", "   ", "   ", "   ", "   ", "   ", "   "])

  puts " #{board[0]} " + "|" + " #{board[1]} " + "|" + " #{board[2]} "
  puts "-----------"
  puts " #{board[3]} " + "|" + " #{board[4]} " + "|" + " #{board[5]} "
  puts "-----------"
  puts " #{board[6]} " + "|" + " #{board[7]} " + "|" + " #{board[8]} "
end

def input_to_index(user_input)
  user_input = user_input.to_i
  user_input = user_input - 1
end

def move(board, position, char='X')
  board[position] = char
end

def position_taken?(board, position)
  if board[position.to_i] == "" || board[position.to_i] == nil || board[position.to_i] == " "
    return false
  elsif board[position.to_i] == "O" || board[position.to_i] || board[position.to_i] == "X"
    return true
  end

def valid_move?(board, index)
    !position_taken?(board, index) && index.between?(0, 8)
end
# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, index)
   board[index] ==  "" || board[index] == " "
   board[index] == "X" || board[index] == "O"
end
