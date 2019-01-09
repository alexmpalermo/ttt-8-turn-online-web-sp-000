def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  index.between?(0, 8) && !position_taken?(board, index)
end

def position_taken?(board, index)
  board[index] == "X" || board[index] == "O"
end

def move(board, index, value= "X")
  board[index] = value
end

def input_to_index(input)
  index= input.to_i - 1 
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
index= input_to_index(input)
if valid_move?(board, index)
move(board, index, value = "X")
display_board(board)
else
turn(board) 
until valid_move?(board, index)
turn(board)
input = gets.strip
index = input_to_index(input)

move(board, index, value = "X")
display_board(board)
end
end





=======
end
>>>>>>> b2a5d1fd983e79d3a4ea045e8a2959d1f4dee863

