
require 'pry'
player_score=0
computer_score=0

win = {r: :s, s: :p, p: :r }

def convert_input_string (shape)
  possible_inputs = {"r" => "rock", "s" => "scissors", "p" => "paper" }
  possible_inputs[shape]
end

def valid
  while valid_input == false
    puts "Player score: #{player_score}, Computer score: #{computer_score}"
    puts "Choose rock (r), paper (p), or scissors (s): "
    print ">"
    player_input = gets.chomp

    unless ["r","p","s"].include?(player_input)
      puts "Invalid input, Try again"
    else
      valid_input= true
    end
  end
  player_input
end
valid_input = false
while player_score < 2 && computer_score < 2
  puts "Player score: #{player_score}, Computer score: #{computer_score}"
  puts "Choose rock (r), paper (p), or scissors (s): "
  print ">"
  player_input = gets.chomp
  valid


    if player_input == "r"
      player_string=convert_input_string(player_input)
    elsif player_input == "s"
      player_string=convert_input_string(player_input)
    elsif player_input == "p"
      player_string=convert_input_string(player_input)
    end





end
puts "Player score: #{player_score}, Computer score: #{computer_score}"
puts ""
