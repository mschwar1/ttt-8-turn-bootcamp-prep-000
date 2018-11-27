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

def valid_move?(board, index)
  valid = false
  taken = position_taken?(board, index)
  if (index.between?(0,8) && taken == false)
    valid = true
  end
valid
end

def position_taken?(board, index)
  taken = nil
  if (board[index] == "X" || board[index] == "O")
    taken = true
  else
    taken = false
  end
taken
end


def move(board, index, user = "X")
  board[index] = user
  return board
end
