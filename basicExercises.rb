def exercisesBasics
  # add two strings together
  first_name = 'Michael'
  last_name = 'Irschick'
  puts first_name + ' ' + last_name 


  # Use the modulo operator, division, or a combination of both to take a 4 digit number and find the digit in the:
  # 1) thousands place
  # 2) hundreds place
  # 3) tens place
  # 4) ones place
  my_number = 1265
  puts my_number/1000
  puts my_number % 1000 / 100
  puts my_number % 1000 % 100 / 10
  puts my_number % 1000 % 100 % 10

  # Write a program that uses a hash to store a list of movie titles with the year they came out.
  # Then use the puts command to make your program print out the year of each movie to the screen. 
  # The output for your program should look something like this.
  hash_movies = Hash.new(0)
  hash_movies = {:the_matrix => 1997, :matrix_reloaded => 1998}
  puts hash_movies[:the_matrix]
  puts hash_movies[:matrix_reloaded]

  # add to array
  my_array = [hash_movies[:the_matrix],hash_movies[:matrix_reloaded]]
  puts my_array[0]
  puts my_array[1]

  # Write a program that outputs the factorial of the numbers 5, 6, 7, and 8.
  puts 5 * 4 * 3 * 2 * 1
  puts 6 * 5 * 4 * 3 * 2 * 1
  puts 7 * 6 * 5 * 4 * 3 * 2 * 1
  puts 8 * 7 * 6 * 5 * 4 * 3 * 2 * 1
  # square #s
  puts 2**2
  puts 6**2
  puts 14**2

  # SyntaxError: (irb):2: syntax error, unexpected ')', expecting '}'
  #   from /usr/local/rvm/rubies/ruby-2.0.0-rc2/bin/irb:16:in `<main>'
 end
