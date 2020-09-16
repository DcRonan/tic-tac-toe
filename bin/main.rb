puts 'WELCOME TO THIS TIC-TAC-TOE GAME: created by: '
puts "Press 'ENTER' to begin"
gets

# Ask for the players names
puts "\nPlayer 1:"
player1 = gets.chomp

puts "\nPlayer 2:"
player2 = gets.chomp

# Show what numbers to use to place in a square
puts 'Please choose a number between 1-9 to select your place!'

# An array for the selections the players have chosen
board = ['', '', '', '', '', '', '', '', '']

# Created a board layout and the indexes of the players selections
def display_board(board)
  %(#{board[0]} | #{board[1]} | #{board[2]}
----------
#{board[3]} | #{board[4]} | #{board[5]}
----------
#{board[6]} | #{board[7]} | #{board[8]}
  )
end

# The default game piece
game_piece = 'X'

# Method for the player to pick an option
def pick_a_square(board)
  loop do
    square = gets.chomp.to_i - 1
    return square if board[square] == '' && square.between?(0, 8)

    # If the player hs selected an invalid or same number then we ask to select a correct number
    puts 'Please choose a valid square, choose between 1-9 and that hasn\'t been selected!'
  end
end

# loop through the game while still playing
9.times do
  # show whos turn it is
  puts game_piece == 'X' ? "#{player1}'s take your turn!" : "#{player2} take your turn!"
  # makes sure that the board is always displayed
  puts display_board(board)
  # Created a variable that includes the method for selecting
  square_number = pick_a_square(board)
  # Created a variable for a game_piece and what will be placed and where
  board[square_number] = game_piece
  game_piece = game_piece == 'X' ? 'O' : 'X'
  puts display_board(board)
  # 1. Then we will determine who is the winner
  # 2. If there is no winner then we will determine if it is a draw
  # 3. We will then prompt a message to show who has won or if it is a draw
  # --- we have implemented all of this in the game_logic branch ---
end