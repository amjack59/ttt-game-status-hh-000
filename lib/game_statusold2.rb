
def position_taken?(board, location)
  !(board[location].nil? || board[location] == " ")
end

#ef full?(board)
# count = 0
# board.each_index do |location|
#   position_taken?(board, location)
 #  if position_taken?(board, location) == true
#     count += 1
#   else
#     return false
#   end
 #end  
#nd

def full?(board)
  if  board.any?  {|token| token == " "}
    return false
  else
    return true
  end
end

 board = ["X", "O", "X", "O", "X", "O", "O", "O", "X"]
#board = ["X", "O", "X", "O", "X", "X", "O", "X", "O"]
  #board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
def draw?(board)
  if full?(board) == true && won?(board).kind_of?(Array) == false   #draw
    puts "a draw"
    return true
  elsif full?(board) == false && won?(board).kind_of?(Array) == false  # in progress
    puts "In progress"
    return false
  elsif won?(board) == true  #a win
    puts "A win"
    return false
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
  
        if position_1 == "X" && position_2 == "X" && position_3 ==  "X"  
          return win_combination, true 
        elsif position_1 == "O" && position_2 == "O" && position_3 ==  "O"
          return win_combination, true
        elsif board.all? {|token| token == " "}
          return false
        end
          
    end   # end WIN_COMBINATIONS do
  end


