
require 'pry'
player_score=0
computer_score=0

win = {r: :s, s: :p, p: :r }

def convert_input_string (shape)
  possible_inputs = {"r" => :r, "s" => :s, "p" => :p }
  possible_inputs[shape]
end

def computer_selection (shape)
  comp_shape = {0 => :r, 1 => :s, 2 => :p}
  return comp_shape[shape]
end

def choice_to_string (choice)
  choice_string = {:r => "rock", :s => "scissors", :p => "paper"}
  return choice_string[choice]
end

#def valid
#  while valid_input == false
#    puts "Player score: #{player_score}, Computer score: #{computer_score}"
#    puts "Choose rock (r), paper (p), or scissors (s): "
#    print ">"
#    player_input = gets.chomp

#    unless ["r","p","s"].include?(player_input)
#      puts "Invalid input, Try again"
#    else
#      valid_input= true
#    end
#  end
#  player_input
#end
valid_input = true
while valid_input == true
  puts "Player score: #{player_score}, Computer score: #{computer_score}"
  puts "Choose rock (r), paper (p), or scissors (s): "
  print ">"
  player_input = gets.chomp
## how to reiterate the loop when input is invalid
  unless ["r","p","s"].include?(player_input)
      puts "Invalid input, Try again"
      valid_input = false
  end

  if player_input == "r"
      player_string=convert_input_string(player_input)
  elsif player_input == "s"
      player_string=convert_input_string(player_input)
  elsif player_input == "p"
      player_string=convert_input_string(player_input)
  end
  comp_choice = computer_selection(rand(3))
  if player_string == :r && comp_choice == :s
    puts "Player chose: #{choice_to_string(player_string)}"
    puts "Computer chose: #{choice_to_string(comp_choice)}"
    puts "Rock beats scissors, Player wins"
    player_score += 1
  elsif player_string == :r && comp_choice == :p
    puts "Player chose: #{choice_to_string(player_string)}"
    puts "Computer chose: #{choice_to_string(comp_choice)}"
    puts "Paper beats rock, computer wins"
    computer_score += 1
  elsif player_string == :r && comp_choice == :r
    puts "Player chose: #{choice_to_string(player_string)}"
    puts "Computer chose: #{choice_to_string(comp_choice)}"
    puts "Its a Tie!"
    computer_score += 0
  elsif player_string == :p && comp_choice == :r
    puts "Player chose: #{choice_to_string(player_string)}"
    puts "Computer chose: #{choice_to_string(comp_choice)}"
    puts "Paper beats rock, Player wins!"
    player_score += 1
  elsif player_string == :p && comp_choice == :s
    puts "Player chose: #{choice_to_string(player_string)}"
    puts "Computer chose: #{choice_to_string(comp_choice)}"
    puts "Scissors beats paper, Computer wins!"
    computer_score += 1
  elsif player_string == :p && comp_choice == :p
    puts "Player chose: #{choice_to_string(player_string)}"
    puts "Computer chose: #{choice_to_string(comp_choice)}"
    puts "Its a Tie"
  elsif player_string == :s && comp_choice == :s
    puts "Player chose: #{choice_to_string(player_string)}"
    puts "Computer chose: #{choice_to_string(comp_choice)}"
    puts "Its a Tie!"
  elsif player_string == :s && comp_choice == :r
    puts "Player chose: #{choice_to_string(player_string)}"
    puts "Computer chose: #{choice_to_string(comp_choice)}"
    puts "Rock beats scissors, Computer wins!"
    computer_score += 1
  elsif player_string == :s && comp_choice == :p
    puts "Player chose: #{choice_to_string(player_string)}"
    puts "Computer chose: #{choice_to_string(comp_choice)}"
    puts "Scissors beats paper, Player wins!"
    player_score += 1
  end
if player_score == 2
  puts "Player score: #{player_score}, Computer score: #{computer_score}"
  puts "Player is the winner!"
  break
elsif computer_score == 2
  puts "Player score: #{player_score}, Computer score: #{computer_score}"
  puts "Computer is the winner!"
  break
end

end
