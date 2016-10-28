def putsDivide
  puts '=========='
end
def putsDivide(string)
  puts '===== ' + string + ' ====='
end

def flowControl
  puts "Put in a number:"
  a = gets.chomp.to_i
  if a == 3
    puts "a is 3"
  elsif a == 4
    puts "a is 4"
  else
    puts "a is neither 3, nor 4"
  end

  puts "Put in a number:"
  x = gets.chomp.to_i
  # Example 1
  if x == 3
    puts "x is 3"
  end

  # Example 2
  if x == 3
    puts "x is 3"
  elsif x == 4
    puts "x is 4"
  end

  # Example 3
  if x == 3
    puts "x is 3"
  else
    puts "x is NOT 3"
  end

  # Example 4: must use "then" keyword when using 1-line syntax
  if x == 3 then 
    puts "x is 3" 
  end
  puts "UNLESS condition x is NOT 3" unless x == 3
  puts "APPEND IF:: x is 3" if x == 3

  def compareOperators
    puts 4 <= 5
    puts 5 >= 5
    puts 4 >= 5
    puts 4 >= 3
    puts 4 >= 4
    puts 4 == 4
    puts 4 != 4
    puts 4 != 5
    puts (4 == 4) && (5 == 5)
    puts (4 == 4) || (5 == 5)
    puts (3 == 4) || (4 == 5)
    puts !(4 == 4) 
    puts (4==4) ? "this is true" : "this is not true"
    puts (4==5) ? "this is true" : "this is not true"
  end
  compareOperators

  def caseExamples
    # case_statement.rb
    puts 'Enter a number for case statement'
    a = gets.chomp
    case a.to_i
    when 5
      puts "a is 5"
    when 6
      puts "a is 6"
    else
      puts "a is neither 5, nor 6"
    end
  end
  caseExamples

  def caseExamples2
    a = 5
    answer = case a
    when 5
      "a is 5"
    when 6
      "a is 6"
    else
      "a is neither 5, nor 6"
    end
    puts answer
  end
  caseExamples2

  def booleanExample
    puts 'booleanExample'
    puts (32 * 4) >= 129
    puts false != false
    puts true == 4
    puts false == (false)
    puts (!true || (!(100 / 5) == 20) || ((328 / 4) == 82)) || false
    puts (false || true) || false
    puts false || true
  end
  booleanExample

  def longName(name)
    if name.length >=10
      return name.upcase
    else
      return name 
    end
  end
  puts longName('michael')
  puts longName('michael irschick')

  # Write a program that takes a number from the user 
  # between 0 and 100 and reports back whether the number is 
  # between 0 and 50, 51 and 100, or above 100.

  def numEvaluator(number_in)
    if (number_in >= 0) && (number_in <= 50)
      puts 'between 0 and 50'
    elsif  (number_in >= 51) && (number_in <= 100)
      puts 'between 51 and 100'
    elsif (number_in >= 101) 
      puts '>100'
    else
      puts '<0'
    end
  end
  numEvaluator(gets.chomp.to_i)
  def numEvaluator2(number_in)
    case
    when  (number_in < 0)
      puts '<0'
    when  (number_in >= 0) && (number_in <= 50)
      puts 'between 0 and 50'
    when  (number_in >= 51) && (number_in <= 100)
      puts 'between 51 and 100'
    else (number_in >= 101) 
      puts '>100'
    end
  end
  numEvaluator2(gets.chomp.to_i)
end