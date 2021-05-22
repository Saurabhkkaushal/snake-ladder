
puts "....................................Starting the Game........................"
game = Game.new
dice = Dice.new(range: 6)
board = Board.new(size: 100)
ps = PositionFactory.new
ps.add('SnakePositionFactory', 13, 7)
ps.add('SnakePositionFactory', 20, 11)
ps.add('SnakePositionFactory', 77, 55)


ps.add('LadderPositionFactory', 4, 50)
ps.add('LadderPositionFactory', 3, 70)
ps.add('LadderPositionFactory', 8, 48)

p1 = Player.new(name: "Saurabh")
p2 = Player.new(name: "Kaushal")
all_players = [p1, p2]

turn_obj = Turn.new(players_objs: all_players)

while(true)
  player = turn_obj.turn
  old_pos = player.position
  puts "Turn of #{player.name}"
  output = player.roll(dice)
  puts "output number: #{output}"
  final_pos = player.update_pos(output, board)

  puts "old_pos #{old_pos} final_pos #{final_pos}"

  if player.won?(board)
    puts "Player: #{player.name}.. wins... Congratulations"
    break
  end
  # sleep(2)
  puts "...................Round Done............................"
end
puts "....................................Game Ends................................"
puts "Good Bye!!!!"


