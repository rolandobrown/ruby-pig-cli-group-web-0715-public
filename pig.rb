def roll
  rand(1..6)
end

puts "welcome to pig"
outcome = roll
abort("You rolled a 1, sorry") if outcome == 1

score = outcome

loop do 
  puts "your score is #{score}"
  puts "would you like to roll again? (y/n)"
  response = gets.chomp.downcase
  break if response != 'y'
  outcome = roll
  abort("You rolled a 1, sorry") if outcome == 1
  score = outcome
end

puts "You made it! Your score is #{score}"