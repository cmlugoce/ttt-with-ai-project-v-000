class TTT

def initialize
end 

def start
puts "Welcome to Tic Tac Toe!"

input = gets.strip
  if input == "1"
    board = Board.new
    game = Game.new(player_1 = Players::Computer.new("X"), player_2 = Players::Computer.new("O"))
    game.play
  elsif input == "2"
    board = Board.new
    puts "Who goes first? (h: human / c: computer)"
    input = gets.strip

    if input == "h"
      game = Game.new(player_1 = Players::Human.new("X"), player_2 = Players::Computer.new("O"))
      puts "Please enter your first move so we can start the game."
      board.display
      game.play
    elsif input == "c"
      game = Game.new(player_1 = Players::Computer.new("X"), player_2 = Players::Human.new("O"))
      board.display
      game.play
    else
      start
    end
  elsif input == "3"
    board = Board.new
    game = Game.new(player_1 = Players::Human.new("X"), player_2 = Players::Human.new("O"))
    puts "Please enter your first move so we can start the game."
    board.display
    game.play
  elsif input == "wargames"
    board = Board.new
    game = Game.new(player_1 = Players::Computer.new("X"), player_2 = Players::Computer.new("O"))
    100.times.collect {
      game.play
    }
  else
    start
  end
end

start

end 