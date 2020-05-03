# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant


WIN_COMBINATIONS = [[0,1,2],[0,4,8], [0, 3, 6], [1,4,7], [2,4,6], [2,5,8], [3,4,5], [6,7,8]]

def won?(board)
  ii=0 
  while(ii < 8)
    win_candidate=WIN_COMBINATIONS[ii]
    pos_1 = board[win_candidate[0]]
    pos_2 = board[win_candidate[1]]
    pos_3 = board[win_candidate[2]]
    if (pos_1== pos_2 && pos_1 == pos_2 && pos_2 == pos_3 && pos_1 != " ")
      return win_candidate
    end
    ii+=1
  end
  return false 
end

def full?(board)
  ii=0 
  while (ii<9)
    if (board[ii]== " ")
      return false
    end
    ii += 1 
  end
  return true
end

def draw?(board)
  if(full?(board)==false)
    return false 
  elsif(won?(board)!=false)
    return false
  else 
    return true
  end
end
def over?(board)
  if(full?(board))
    return true 
    elsif (won?(board))
     return true 
   else 
     return false
   end
end 

def winner(board)
  win_arr= won?(board)
  if (win_arr == false)
    return nil 
  end 
  win_node= win_arr[0]
  win_piece = board[win_node]
  return win_piece
end