# Helper Method
def position_taken?(board, location)
  !(board[location].nil? || board[location] == " ")
end

def full?
  board = ["X", " ", "X", " ", "X", " ", "O", "O", " "]
  board.each_index do |location|
    allfull = board.all do |location|
      position_taken?(board, location)
       if allfull == true
          true
         puts allfull
       else
          false  
         puts allfull
      end
    end
  end
end
# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
    [0,1,2],[3,4,5],[6,7,8],
    [0,3,6],[1,4,7],[2,5,8],
    [0,4,8],[6,4,2]
    ]

def won?(board)
  
  WIN_COMBINATIONS.each do |win_combination|
     win_index_1 = win_combination[0]
     win_index_2 = win_combination[1]
     win_index_3 = win_combination[2]
    
     position_1 = board[win_index_1] 
     position_2 = board[win_index_2] 
     position_3 = board[win_index_3] 
 
        if position_1 == "X" && position_2 == "X" && position_3 = "X" || position_1 == "O" && position_2 == "O" && position_3 = "O"
          return win_combination # return the win_combination indexes that won.
        else
          return false
        end
    
   
    end   # end WIN_COMBINATIONS do
  
  end
    
    




