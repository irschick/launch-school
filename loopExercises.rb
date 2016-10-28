def putsDivide
  puts '=========='
end
def putsDivide(string)
  puts '===== ' + string + ' ====='
end

def hashExercises
    # ========
  putsDivide('')
end

def loopExercises 
  def goToZero(number)
    puts 'in gotozero'
    if number ==0
      return number
    else
      goToZero(number-1)    
    end
  end
  starting_number = 10
  puts starting_number
  puts goToZero(starting_number) 

  # fibonacci.rb
  def fibonacci(number)
    if number < 2
      number
    else
      fibonacci(number - 1) + fibonacci(number - 2)
    end
  end
  puts fibonacci(6)

  x = ""
  while x != "STOP" do
    puts "Are you ok"
    ans = gets.chomp.upcase
    puts "Are you ok....again?"
    x = gets.chomp.upcase
  end

  top_five_games = ["terminator",
                  "matrix",
                  "king and I",
                  "double dragon"]

  top_five_games.each_with_index do | game, index |
    puts "#{index + 1}. #{game}"
    puts game
    puts index
  end
end
loopExercises