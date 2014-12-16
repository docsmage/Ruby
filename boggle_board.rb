# Solution for Challenge: A Nested Array to Model a Boggle Board.
# Renee's boggle board

@boggle_board = [["b", "r", "a", "e"],
                ["i", "o", "d", "t"],
                ["e", "c", "l", "r"],
                ["t", "a", "k", "e"]]

# Creating the method that allows us to call an individual element of the boggle board

def create_word(board, *coords) # takes an argument of board, and coords (can hold however many coords as the user inputs)
  coords.map { |coord| board[coord.first][coord.last]}.join("") # essentially returns everything in the range between the fist and last coordinate, and joins them together as one string.
end # ends create_word

# Individual calls to the boggle board

puts create_word(@boggle_board, [2,1], [1,1], [1,2], [0,3])  #=> returns "code"  (DBC)
puts create_word(@boggle_board, [0,1], [0,2], [1,2])  #=> returns "rad" (DBC)
# Renee's new calls
puts create_word(@boggle_board, [0,0], [0,1], [1,0], [2, 1], [3,2])  #=> returns "brick"
puts create_word(@boggle_board, [2,1], [2,2], [3,3], [2, 3], [3,2])  #=> returns "clerk"
puts create_word(@boggle_board, [1,3], [0,2], [0,1], [1, 1], [1,3])  #=> returns "tarot"

# Method that takes a row number and returns all the elements in the row

def get_row(row) # defines get_row
  @boggle_board.fetch(row) {|row| puts "#{row}"}.join("") # fetches the elements of each row and joins it together as one string.
end # ends get_row

# test for get_row
puts get_row(1) #=>  ["i", "o", "d", "t"]
puts get_row(3) #=>  ["t", "a", "k", "e"]

# Method that takes a column number and returns all the elements in the column

def get_col(col) #  defines get_col
  @boggle_board.map { |row| row[col] }.join("") # looks up the column of each row and joins them together as one string.
end # ends get_col

# test for get_col
puts get_col(1)  #=>  ["r", "o", "c", "a"]
puts get_col(3)  #=>  ["e", "t", "r", "e"]
puts get_col(0)  #=>  ["b", "i", "e", "t"]
