def display_board(board)
 puts " #{board[0]} | #{board[1]} | #{board[2]} "
 puts "-----------"
 puts " #{board[3]} | #{board[4]} | #{board[5]} "
 puts "-----------"
 puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  user_input.to_i - 1 
end

def move(board, index, character='X')
  board[index] = character
end

def valid_move?(board, index) 
  return nil if index > 8
  return true if !position_taken?(board, index) 
  false 
end

def position_taken?(board, index)
  return false if board[index] == ' ' || board[index] == '' || board[index] == nil
  true
end