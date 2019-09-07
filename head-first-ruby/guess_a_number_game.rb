# Get My Number game

puts "Welcome to 'Get My Number!'"

# Get player's name & greet em

print "What's your name? "
input = gets
name = input.chomp
puts "Welcome, #{name}!"

# Store a random number for the player to guess
puts "I've got a random number between 1 and 100."
puts "Can you guess?"
target = rand(100) + 1

num_guesses = 0
guessed_it = false

until num_guesses == 10 || guessed_it
  puts "You've got #{10 - num_guesses} guesses left"
  print "MAKE A GUESS: "
  guess = gets.to_i

  num_guesses += 1

  if guess < target
    puts "oops too low"
  elsif guess > target
    puts "oops 2 high"
  elsif guess == target
    puts "YOU WON, #{name}!"
    puts "You guess it right in #{num_guesses} guesses"
    guessed_it = true
  end
end

unless guessed_it
  puts "Sorry, you didn't get it. Number was #{target}"
end
