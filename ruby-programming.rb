MY_CONSTANT = 'Constant: I am available throughout your app.'
puts MY_CONSTANT

def putsDivide
	puts '=========='
end
def putsDivide(string)
	puts '===== ' + string + ' ====='
end

def arrayExercises
	array = [1, 'Bob', 4.33, 'another string']
	puts 'first'
	puts array.first
	puts 'last'
	puts array.last
	puts 'pop'
	# remove elem
	array.pop
	puts array
	puts 'first in array'
	puts array[0]

	# add an elem
	array.push("another string")
	puts array
	array << "another string 2"
	puts array
	# ------

	# loops and creates new array
	a = [1, 2, 3, 4]
	b = a.map { |num| num**2 }
	c = a.collect { |num| num**2 }
	puts a
	puts b
	puts c
	b.delete_at(0)
	puts b

	# eliminates dups
	d = [1, 1, 2, 2, 3, 3, 4, 4]
	e = d.uniq
	puts d
	puts e
	# changes array with !
	f = [1, 1, 2, 2, 3, 3, 4, 4]
	f.uniq!
	puts f
	# only when meets condition
	numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
	numbers2 = numbers.select { |number| number > 4 }
	puts numbers
	puts numbers2

	def mutate(arr)
	  arr.pop
	end
	def not_mutate(arr)
	  arr.select { |i| i > 3 }
	end
	z = [1, 2, 3, 4, 5, 6]
	y = [1, 2, 3, 4, 5, 6]
	mutate(z)
	not_mutate(y)
	puts z
	puts y

	# compare
	a = [1, 2, 3]
	puts a
	b = [2, 3, 4]
	puts b
	puts a == b
	b.pop
	puts b
	b.unshift(1)
	puts b
	puts a == b

	# ========
	putsDivide('include example')
	a = [1, 2, 3, 4, 5]
	puts a
	puts a.include?(3)

	# ========
	putsDivide('flatten example')
	a = [1, 2, [3, 4, 5], [6, 7]]
	puts a
	putsDivide('length')
	puts a.length()
	putsDivide('after flatten')
	c = a.flatten
	puts c
	putsDivide('length')
	puts c.length()

	# ========
	# The each_index method iterates through the array much like the each method, 
	# however the variable represents the index number as opposed to the value at each index. 
	# It passes the index of the element into the block and you may do as you please with it. The original array is returned.
	putsDivide('each example')
	a = [1, 2, 3, 4, 5]
	a.each_index { |i| puts "This is index #{i}" }

	# ========
	putsDivide('each_with_index example')
	a = ['a', 'b', 'c', 'd', 'e']
	puts a
	putsDivide('looping through')
	a.each_with_index { |val, idx| puts "#{idx+1}. #{val}" }

	# ===========
	putsDivide('sort')
	a = [5, 3, 8, 2, 4, 1]
	puts a
	putsDivide('now sort them')
	puts a.sort


	# ===========
	putsDivide('product example')
	a = [1, 2, 3]
	putsDivide('product A example')
	puts a
	b = [4,5]
	putsDivide('product A example')
	puts b
	putsDivide('product a*b example')
	puts a.product(b)

	# ===========
	putsDivide('each example')
	a = [1, 2, 3]
	puts a
	c = a.each { |e| puts e + 2 }
	putsDivide('each example: after iteration')
	puts a
	putsDivide('each example: new array')
	puts c


	# ===========
	putsDivide('map example')
	a = [1, 2, 3]
	putsDivide('map example: before')
	puts a
	c = a.map { |x| x**2 }
	putsDivide('map example: after')
	puts a
	putsDivide('map example: new array')
	puts c

	putsDivide('map example: new array using puts')
	a = [1, 2, 3]
	puts a
	c = a.map { |x| puts x**2 }
	puts c

	# ===========
	putsDivide('look for 3 in array')
	arr = [1, 3, 5, 7, 9, 11]
	number = 3
	arr.each_with_index { |val, idx | 	
		if val == number
			puts 'found # ' + val.to_s 
			puts "#{val} is in the array."
		end
	}
	# ===========
	putsDivide('look for 3 in array using include?')
	if arr.include?(number)
  	puts "#{number} is indeed in the array."
	end

	# ===========
	putsDivide('exersise product')
	arr = ["b", "a"]
  arr = arr.product(Array(1..3))
  puts arr
	
	putsDivide('exersise first.last')
	puts arr.first.last
	
	putsDivide('exersise first')
  puts arr.first

	putsDivide('arr size')
  puts arr.length

  # [b].[1]. delete(1)
	putsDivide('after delete')
  arr.first.delete(arr.first.last)
  puts arr
	
	# ===========
	putsDivide('product example v2')
	arr = ["b", "a"]
	puts arr
	putsDivide('product example v2 after product')
	arr = arr.product([Array(1..3)])
	puts arr
	putsDivide('product example v2 after arr.first.delete(arr.first.last)')
	arr.first.delete(arr.first.last)
	puts arr

	# ===========
	putsDivide('print example')
	arr = [["test", "hello", "world"],["example", "mem"]]
	if arr.flatten.include?("example")
		puts 'Found example'
	end
	
	putsDivide('print example')
	puts 'found ' + arr.last.first

	putsDivide('access arrays')
	arr = [15, 7, 18, 5, 12, 8, 5, 1]
	puts arr.index(5)
	# will cause error
	# puts arr.index[5]
	puts arr[5]
	
	putsDivide('access array of characters')
	string = "Welcome to America!"
	a = string[6]
	b = string[11]
	c = string[19]
	puts a
	puts b
	puts c

	putsDivide('assign to array')
	names = ['bob', 'joe', 'susan', 'margaret']
	# names['margaret'] = 'jody'
	names[3] = 'jody'
	puts names

	putsDivide('map example: new array:: before')
	a = [1, 2, 3]
	puts a
	c = a.map { |x| x+2 }
	putsDivide('map example: new array:: after')
	puts c
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

def exercisesMethods
	def hello(name)
		'Hello ' + name
	end
	puts hello('Michael')

	def add(a, b)
  	a + b
	end
	def subtract(a, b)
  	a - b
	end
	def multiply(num1, num2)
  	num1 * num2
	end
	puts multiply(add(20, 45), subtract(80, 10))

	# say.rb refactored again
	def say(words='hola')
	  puts words + '.'
	end
	say()
	say
	say("hi")
	say("how are you")
	say("I'm fine")

	def some_method(number)
  	number = 7 # this is implicitly returned by the method
  	puts number
	end
	a = 5
	some_method(a)
	puts a
	
	# Example of a method that modifies its argument permanently
	# mutate.rb
	a = [1, 2, 3]
	def mutate(array)
	  array.pop
	end
	p "Before mutate method: #{a}"
	p mutate(a)
	p "After mutate method: #{a}"
end

def exercisesVariables
	$var = 'Global variable: I am also available throughout your app.'
	puts $var
	# Class variables
	@@instances = 0
	puts @@instances
	# Instance variable
	@var = 'I am available throughout the current instance of this class.'
	puts @var
	# local var
	var = 'I must be passed around to cross scope boundaries.'
	puts var

	# Write a program called name.rb 
	# that asks the user to type in their name and then prints 
	# out a greeting message with their name included.
	def printName
		puts 'Enter Name:'
		name = gets.chomp
		puts 'Hello ' + name
		# print 10 times
		10.times do |num|
			print "num = #{num+1},"
			print ' Your name is:' + name
			print "\n"
		end
		print "\n"
	end
	# printName

	def printName2
		puts 'Enter First Name:'
		first_name = gets.chomp

		puts 'Enter Last Name:'
		last_name = gets.chomp
		full_name = first_name + ' ' + last_name
		puts 'Hello ' + full_name
		# print 10 times
		10.times do |num|
			print "num = #{num+1},"
			print ' Your name is:' + full_name
			print "\n"
		end
		print "\n"
	end
	# printName2

	# Print name 10 times 
	def printAge
		puts 'Enter Age:'
		age = gets.chomp
		puts 'Age in 10 Years:'
		puts age.to_i + 10
		puts 'Age in 20 Years:'
		puts age.to_i + 20
		puts 'Age in 30 Years:'
		puts age.to_i + 30
		puts 'Age in 40 Years:'
		puts age.to_i + 40
	end
	# printAge

	def scopeTest
		y = 0
		x = 0	
		3.times do
		  y += 1
		  x = y
		end
		puts x
	end
	# scopeTest

	# NameError: undefined local variable or method `shoes' for main:Object
	#  from (irb):3
 	#  from /usr/local/rvm/rubies/ruby-2.0.0-rc2/bin/irb:16:in `<main>'
end

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


# def symbolsLC
# 	# Examples of symbols
# 	:name = 'Michael'
# 	:a_symbol = 'fist_in_air'
# 	puts :a_symbol
# 	puts :name
# 	puts :"surprisingly, this is also a symbol" 
# end


@NUMS = [1, 2, 3, 4, 5]
def arraysLC
	puts 'arraysLC'
	puts @NUMS
	puts @NUMS[0]
end

def stringMethods
	puts 'stringMethods'
	# Ex. 1: with double quotes
	puts "The man said, 'Hi there!'"
	# Ex 2: with single quotes and escaping
	puts 'The man said, \'Hi there!\''
end

def moreRubyOperators
	puts 'moreRubyOperators'
	puts '12'.to_i
	puts '4'.to_i
	puts '4 hi there'.to_i
	puts 'hi there 4'.to_i
	puts '4'.to_f
	puts '4 hi there'.to_f
	puts 'hi there 4'.to_f
end

# -----------

def rubyOperator
	x = 10
	y = 5
	print "x=", x, "\n"
	print "y=", y, "\n"
	print "(x == y) should be false ", (x == y),"\n" 
	print "(x != y) should be true ", (x != y),"\n" 
	print "(x > y) should be true ", (x > y),"\n" 
	print "(x < y) should be false ", (x < y),"\n" 
	print "(x >= y) should be true ", (x >= y),"\n" 
	print "(x <= y) should be false ", (x <= y),"\n" 
	print "(x <=> y) should be 1 ", (x <=> y),"\n" 
end

def logicalOperator
	x = true
	y = true
	print  "x=",x,"\n"
	print  "y=",y,"\n"
	if (x and y) 
		print  "both x = true and y = true","\n"
	end
	if (x or y) 
		print  "x = true or y = true","\n"
	end
	x = true
	y = true	 
	print  "x=",x,"\n"
	print  "y=",y,"\n"
	if (x && y) 
		print  "(x && y) both the operands are true","\n"
	else
		print  "(x && y) both the operands are not true","\n"
	end

	x = true
	y = false	 
	print  "x=",x,"\n"
	print  "y=",y,"\n"
	if (x && y) 
		print  "(x && y) both the operands are true","\n"
	else
		print  "(x && y) both the operands are not true","\n"
	end

	x = true
	y = false	 
	print  "x=",x,"\n"
	print  "y=",y,"\n"
	if (x || y) 
		print  "(x || y) one of the operands are true","\n"
	else
		print  "(x || y) both the operands are false","\n"
	end

	x = false
	y = false	 
	print  "x=",x,"\n"
	print  "y=",y,"\n"
	if (x || y) 
		print  "(x || y) one of the operands are true","\n"
	else
		print  "(x || y) both the operands are false","\n"
	end

	x = true
	print  "x=",x,"\n"
	if !() 
		print  "(x ! true) x = false","\n"
	else
		print  "(x ! true) x = true","\n"
	end


	x = false
	print  "x=",x,"\n"
	if !(x) 
		print  "(x ! true) x = false","\n"
	else
		print  "(x ! true) x = true","\n"
	end

end


def basicOperator
	x = 10
	y = 5
	startingZ = 20
	z = startingZ

	print  "x=",x,"\n"
	print  "y=",y,"\n"
	print  "z=",z,"\n"

	print  "x+y=",(x+y),"\n" 
	print  "z+= x=",(z+=x),"\n"
	
	z=startingZ
	print  "z=",z,"\n"
	print "z -= y is z = z-y =>",(z-=y),"\n" 
	
	z=startingZ
	print  "z=",z,"\n"
	print "z *= x is equivalent to z = z*x =>",(z *= x),"\n"

	z=startingZ
	print  "z=",z,"\n"
	print "z /= x is equivalent to z = z/y =>",(z /= x ),"\n"

	z=startingZ
	print  "z=",z,"\n"
	print "z %= x is equivalent to z = z % x =>",(z %= x ),"\n"  

	z=2
	print  "z=",z,"\n"
	print "z **= x is equivalent to z = z ** x =>",(z **= x ),"\n"  
end


def conditionalOperators
	ary = [1,2,3]
	ary[3] ||= 99    # index 3 is the *fourth* index
	ary[0] ||= 99    # first element won't be overwritten
	puts ary              #=> [1, 2, 3, 99]

	hash = {:the_matrix => :good, :matrix_reloaded => :ok}
	hash[:matrix_revolutions] ||= :terrible        # add new item
	hash[:the_matrix] ||= :bad      # won't change existing value
	puts hash
	x ||= 1         #=> 1
	x ||= 99        #=> 1   (as expected)

	y ||= false     #=> false
	y ||= true      #=> true      (oops!)
end

def createObjectFromLib
	require_relative 'libDir/lib'  
	m = MotorCycle.new('Yamaha', 'red')  
	m.start_engine 
end

def objectExample
	a = 10
	b = 3.*(a).+(10) # (3*10)+10
	Kernel::printf("%d %d\n", a, b);

	# Type is still dynamic.
	b = String.new("A string")
	c = 'Another String'
	Kernel.print(b.+(" and ")::+(c).+("\n"))
end

def getAgeInDays(age)
    return age*365
end

def moreStringFunctions
	greeting = "Hi there Michael Irschick.  How are you?"
	print greeting.length, " [" + greeting + "]\n"

	# Selecting a character in a string gives an integer ascii code.
	print greeting[3],greeting[4],greeting[5],greeting[6],greeting[7],"\n"
	printf("%c\n", greeting[0])

	# The [n,l] substring gives the starting position and length.  The [n..m]
	# form gives a range of positions, inclusive.
	print "[" + greeting[0,9] + "] [" + greeting[0..greeting.length+1] + "]\n"

	print "Wow " * 5, "\n"
	print greeting.index("there"), " ", greeting.index("How"), " ", greeting.index("bogus"), "\n"
	print greeting.reverse, "\n"
end

def anotherCaseExample
	print "Enter a string: "
	myEntry = gets.chomp
	case
	when myEntry.match(/\d/)
	  puts 'String has numbers'
	when myEntry.match(/[a-zA-Z]/)
	  puts 'String has letters'
	else
	  puts 'String has no numbers or letters'
	end
end

def iterateExample
	aryNumbers = [1,2,3,4,5]
	aryNumbers.each do |i|
   		puts i
	end
	aryString = ['cat','dog','rat']
	aryString.each do |x|
   		puts x
	end
end

def caseExample
	for i in (1..4)
		case i
		when 1
		  puts 'Well done!'
		when 2
		  puts 'Try harder!'
		when 3
		  puts 'You need help!!!'
		else
		  puts "You just making it up!"
		end
	end
end
	
def forExample
	# Simple for loop using a range.
	print "example of 1..10"
	print "\n"
	for x in (1..10)
	    print x," Michael "
	end
	print "\n"

	print "example of 1...5"
	print "\n"
	for i in (1...5)
	    print i," "
	end
	print "\n"

	print "example of for x	in list"
	print "\n"
	# Running through a list (which is what they do).
	items = [ 'Mark', 12, 'goobers', 18.45 ]
	for item in items
	    print item, " "
	end
	print "\n"

	print "exmaple: for i in (0...items.length)"
	print "\n"
	# Go through the legal subscript values of an array.
	for i in (0...items.length)
		print "i=",i, "\n"
	    print items[0..i].join(" "), "\n"
	end
end


def findString
	print "tell me something"
	user_input = gets.chomp.downcase
	if (user_input.include? "s")
	    puts user_input.gsub!(/s/, "th")
	end  
end

def splitSentenace
	puts "text to look through"
	text = gets.chomp
	puts "text to redact"
	redact = gets.chomp

	words = text.split(" ")
	words.each do |word|
	  if word == redact
	    print "REDACTED "
	  else 
	    print word + " "
	  end
	end
end

def whileExample
	# Some counting with a while.
	a = 0
	while a < 15
	    print a, " "
	    if a == 14 then
	        print "made it to 15!!"
	    end
	    a = a + 1
	end
	print "\n"

	# Here's a way to empty an array.
	foodArray = [ 'eggs.', 'some', 'break', 'to', 'Have','bread' ]
	printf foodArray.join(" ")
	print "\n"
	print(foodArray.pop, " ") while foodArray.size > 0
	print "\n"
end

def conditionalExamples2
	# Let the user guess.
	print "Enter Raiders or Niners? "
	entry = gets.chomp
	unless entry.capitalize == 'Raiders' || entry.capitalize == 'Niners' 
	    print "I _said_ heads or tails.  Can't you read?\n"
	    exit(1)
	end
	# Now toss the coin.
	myToss = if rand(2) == 1 then
	    "Raiders"
	else
	    "Niners"
	end
	# Report.
	print "Toss was ", myToss, ".\n"
	print "You Win!\n" if entry == myToss
end

def conditionalExamples
	# Pick a random number.

	randomNumber = rand(1000)
	print "Your magic number is ", randomNumber, "\n"

	# Perform all sort of totally uselss test on it and report the results.
	if randomNumber % 2 == 1 then
	    print "Ooooh, that's an odd number.\n"
	else
	    print "That's an even number.\n"
	    if randomNumber > 2 then
	        print "It's not prime, BTW.\n"
	    end
	end

	if randomNumber >1000
	    print "wait this is not supposed to happen\n"
	elsif randomNumber <1000
	    print "Awesome job Michael!!!!\n"
	elsif randomNumber == 42
	    print "That's the ultimate magic number!!!!\n"
	elsif randomNumber < 10
	    print "That's pretty small, actually.\n"
	else
	    print "What a boring number.\n"
	end
	if randomNumber == 100 then print "Gosh, you've maxxed out!\n" end
end

def arrayExamples
	arrayA = [ 100, 10, 1000000, 10000]
	arrayB = [ 'Michael', 'Irschick', 'Sasha', 'Oakland' ]
	print 'arrayA ',arrayA,"\n"
	print 'arrayB ',arrayB,"\n"
	print 'arrayA + arrayB ',(arrayA + arrayB).join('****'), "\n"

	print "\n"
	print arrayA[0]," ", arrayB[0],"\n"

	print "Sorting","\n"
	print arrayA.sort.join(' '), "\n"
	arrayA << 'Jason' << 9 << 'Kidd'
	print "arrayA: ", arrayA.join(' '), "\n"

	arrayB << 'alex' << 48 << 220
	print "arrayB: ", arrayB.join(' '), "\n"
	print "pop: ", arrayB.pop, "\n"
	print "shift: ", arrayB.shift, "\n"
	print "C: ", arrayB.join(' '), "\n"

	print "Will now delete arrayB[2] ", arrayB[2],"\n"
	arrayB.delete_at(2)
	print "D: ", arrayB.join(' '), "\n"
	arrayB.delete('alex')
	print "D: ", arrayB.join(' '), "\n"
	arrayB.delete('Sasha')
	print "D: ", arrayB.join(' '), "\n"
end

def printStrings 
	# Double-quoted strings can substitute variables.
	b = "Michael"
	a = 17
	print "a = #{a}\n";
	print 'a = #{a}\n';

	print "\n";

	# If you're verbose, you can create a multi-line string like this.
	
	print "\n[[[" + b + "\n" + "\n" + "]]]\n";

	print "\nActually, any string
	can span lines.  The line\nbreaks just become
	part of the string.	"
end

def nextMethod
	i = 20
	loop do 
	  i -= 1
	  next if i % 2 == 0
	  print "#{i}"
	  break if i <= 0
	end
end

def hash_increment
	puts "Text please: "
	text = gets.chomp

	words = text.split(" ")
	frequencies = Hash.new(0)
	words.each { |word| frequencies[word] += 1 }
	frequencies = frequencies.sort_by {|a, b| b }
	frequencies.reverse!
	frequencies.each { |word, frequency| puts word + " " + frequency.to_s }
end

def multi_demensional_array
	multi_d_array = [[0,0,0,0],[0,0,0,0],[0,0,0,0],[0,0,0,0]]
	multi_d_array.each {
		|x| 
		puts "#{x}\n" 
	}
	s = [["ham", "swiss"], ["turkey", "cheddar"], ["roast beef", "gruyere"]]
	s.each { | sub_array|
	    sub_array.each { |item|
	        puts item
	    }
	}	
	secret_identities = {
		"The Batman" => "Bruce Wayne",
		"Superman" => "Clark Kent",
		"Wonder Woman" => "Diana Prince",
		"Freakazoid" => "Dexter Douglas"
	}
	secret_identities.each do | movie, actor|
	    puts "#{movie}: #{actor}"
	end
end

def comparison
	book_1 = "A Wrinkle in Time"
	book_2 = "A Brief History of Time"
	puts (book_1 <=> book_2)

	books = ["Charlie and the Chocolate Factory", "War and Peace", "Utopia", "A Brief History of Time", "A Wrinkle in Time"]
	# To sort our books in ascending order, in-place
	books.sort! { |firstBook, secondBook| firstBook <=> secondBook }
	# Sort your books in descending order, in-place below
	books.sort! { |firstBook, secondBook| secondBook <=> firstBook }
end

def symbol_exmaple
	puts "string".object_id
	puts "string".object_id
	puts :symbol.object_id
	puts :symbol.object_id
	puts :symbol.to_s
	puts "symbol".to_sym
end

def hash_example
	my_hash = { 
		"name" => "Eric",
		"age" => 26,
		"hungry?" => true,
		"id" => 123123
	}
	puts my_hash["name"]
	puts my_hash["age"]
	puts my_hash["hungry?"]
	puts my_hash["id"]
	my_hash.
	pets = Hash.new
	pets["sasha"] = "cat"
	puts pets["Stevie"]
	pets.add
	friends = ["Milhouse", "Ralph", "Nelson", "Otto"]
	family = { "Homer" => "dad",
	  "Marge" => "mom",
	  "Lisa" => "sister",
	  "Maggie" => "sister",
	  "Abe" => "grandpa",
	  "Santa's Little Helper" => "dog"
	}
	friends.each { |x| puts "#{x}" }
	family.each { |x, y| puts "#{x}: #{y}" }
end

def alphabetize(arr,rev=false)
    arr.sort!
    if rev 
        arr.reverse! 
    end
end
# array1 = [6,1,4]
# alphabetize(array1,true)   
# puts array1

def example_movies
	movies = {
	  Memento: 3,
	  Primer: 4,
	  Ishtar: 1
	}

	puts "What would you like to do?"
	puts "-- Type 'add' to add a movie."
	puts "-- Type 'update' to update a movie."
	puts "-- Type 'display' to display all movies."
	puts "-- Type 'delete' to delete a movie."

	choice = gets.chomp.downcase
	case choice
	when 'add'
	  puts "What movie do you want to add?"
	  title = gets.chomp
	  if movies[title.to_sym].nil?
	    puts "What's the rating? (Type a number 0 to 4.)"
	    rating = gets.chomp
	    movies[title.to_sym] = rating.to_i
	    puts "#{title} has been added with a rating of #{rating}."
	  else
	    puts "That movie already exists! Its rating is #{movies[title.to_sym]}."
	  end
	when 'update'
	  puts "What movie do you want to update?"
	  title = gets.chomp
	  if movies[title.to_sym].nil?
	    puts "Movie not found!"
	  else
	    puts "What's the new rating? (Type a number 0 to 4.)"
	    rating = gets.chomp
	    movies[title.to_sym] = rating.to_i
	    puts "#{title} has been updated with new rating of #{rating}."
	  end
	when 'display'
	  movies.each do |movie, rating|
	    puts "#{movie}: #{rating}"
	  end
	when 'delete'
	  puts "What movie do you want to delete?"
	  title = gets.chomp
	  if movies[title.to_sym].nil?
	    puts "Movie not found!"
	  else
	    movies.delete(title.to_sym)
	    puts "#{title} has been removed."
	  end
	else
	  puts "Sorry, I didn't understand you."
	end
end

def example_add_movies
	movies = {
	  'starwars'=> 3,
	  'xmen'=> 1
	}
end

def ternary_example
	puts 100 > 50 ? "true"  : "false"
end

def ternary_example1
	puts 1 < 2 ? "One is less than two!" : "One is not less than two."
	# 1 < 2 ? "true" :  "false"
end

def conditional_assignment
	favorite_book = nil
	puts favorite_book

	favorite_book ||= "Cat's Cradle"
	puts favorite_book

	favorite_book ||= "Why's (Poignant) Guide to Ruby"
	puts favorite_book

	favorite_book = "Why's (Poignant) Guide to Ruby"
	puts favorite_book	
end

def implicitReturn(n)
  n % 6 == 0 ? "True" : "False"
  # will return last statement
end

def upto_downto_examples
	"L".upto("P") { |letter| puts letter }
	9.downto(1) { |letter| puts letter }
end
def respondto_example
	age = 26
	puts age.respond_to?(:next)
end

def optional_push
	alphabet = ["a", "b", "c"]
	#alphabet.push("d") # Update me!
	alphabet << "d"
	puts alphabet

	caption = "A giraffe surrounded by "
	caption << "weezards!"
	puts caption
	#caption += "weezards!" # Me, too!
end

def one_liner
	puts "One is less than two!" if 1 < 2
end


$VERBOSE = nil    # We'll explain this at the end of the lesson.
require 'prime'   # This is a module. We'll cover these soon!

def first_n_primes(n)

  return "n must be an integer." unless n.is_a? Integer

  return "n must be greater than 0."  if n <= 0
  
  prime_array ||= [] 
  puts "prime_array #{prime_array}"
  # prime_array = [] if prime_array.nil?

  prime = Prime.new
  n.times { prime_array << prime.next}
  prime_array
end

def block_test
  puts "We're in the method!"
  puts "Yielding to the block..."
  yield
  puts "We're back in the method!"
end

def collect_example
	fibs = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55]
	# Add your code below!
	doubled_fibs = fibs.collect { |num| num * 2 }
	puts "doubled_fibs #{doubled_fibs}"
	puts "fibs #{fibs}"

	fibs1 = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55]
	# Add your code below!
	doubled_fibs1 = fibs1.collect! { |num| num * 2 }
	puts "doubled_fibs1 #{doubled_fibs1}"
	puts "fibs1 #{fibs1}"
end

def proc_example1
	floats = [1.2, 3.45, 0.91, 7.727, 11.42, 482.911]

	round_down = Proc.new do |n|
    	remainder = n % 1
    	n = n - remainder
    	n.round
	end
	# Write your code above this line!
	ints = floats.collect(&round_down)
end

def proc_example
	multiples_of_3 = Proc.new do |n|
  		# puts n
  		n % 3 == 0
	end

	(1..100).to_a.select(&multiples_of_3)	
end

def proc_call
	hi = Proc.new do 
    	puts "Hello!"
	end	
	hi.call
end

def to_string_array
	numbers_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
	strings_array = numbers_array.map(&:to_s)
	puts strings_array
end

def to_sym_array
	strings_array = ["Mike", "Irschick"]
	sym_array = strings_array.map!(&:to_sym)
	puts sym_array
end

def lambda_example
	strings = ["leonardo", "donatello", "raphael", "michaelangelo"]
	# Write your code below this line!

	symbolize = lambda { |x| 
	    x.to_sym 
	}
	# Write your code above this line!
	symbols = strings.collect(&symbolize)
	puts symbols
end

def compare_lambda_vs_proc
	def batman_ironman_proc
	  victor = Proc.new { return "Batman will win!" }
	  victor.call
	  puts "1"
	  puts "1-Iron Man will win!"
	end
	puts batman_ironman_proc

	def batman_ironman_lambda
	  victor = lambda { return "Batman will win!" }
	  victor.call
	  puts "2"
	  puts "2-Iron Man will win!"
	end
	puts batman_ironman_lambda
end

def lambda_example2
	my_array = ["raindrops", :kettles, "whiskers", :mittens, :packages]
	# Add your code below!
	symbol_filter = lambda { |x| 
	    x.is_a? Symbol
	}
	# Write your code above this line!
	symbols = my_array.select(&symbol_filter)
	puts symbols
end

def block_example
	odds_n_ends = [:weezard, 42, "Trady Blix", 3, true, 19, 12.345]
	ints = odds_n_ends.select { |x|  x.is_a? Integer }
	puts ints
end

def another_proc_example
	ages = [23, 101, 7, 104, 11, 94, 100, 121, 101, 70, 44]

	under_100 = Proc.new do |x| 
    	x <100 ?  true :  false 
	end
	youngsters = ages.select(&under_100)
end

def another_proc_example2
	crew = {
	captain: "Picard",
	first_officer: "Riker",
	lt_cdr: "Data",
	lt: "Worf",
	ensign: "Ro",
	counselor: "Troi",
	chief_engineer: "LaForge",
	doctor: "Crusher"
	}
	# Add your code below!

	first_half = lambda do |key, value| 
		value < "M"        	    
	end
	a_to_m = crew.select(&first_half)
end

class Message 
  @@messages_sent = 0
  def initialize(from,to)
      @from = from
      @to = to
      @@messages_sent +=1
  end
  def whosent
  	return @from 
  end
end

class Person1
  attr_accessor :name
  attr_accessor :job  
  def initialize(name, job)
    @name = name
    @job = job
  end
end
# person = Person1.new("Jason","PM")
# puts person.name


# ThePresent has a .now method that we'll extend to TheHereAnd

module ThePresent
  def now
    puts "It's #{Time.new.hour > 12 ? Time.new.hour - 12 : Time.new.hour}:#{Time.new.min} #{Time.new.hour > 12 ? 'PM' : 'AM'} (GMT)."
  end
end
class TheHereAnd
  extend ThePresent
end
# TheHereAnd.now


class Person
    attr_reader :name
    attr_writer :job
  def initialize(name, job)
    @name = name
    @job = job
  end
end
# person = Person.new("Michael","PM")
# puts person.name

class Email < Message
    def initialize(subject)
        @subject = subject
    end
end
# my_message = Message.new("mike","I")
# puts my_message.whosent

class Account
    attr_reader :name
    attr_reader :balance
    def initialize(name, balance = 100)
        @name = name
        @balance = balance
        pin
    end
    public 
    def display_balance(pin_number)
        puts pin_number == @pin ? "Balance: $#{@balance}." :  pin_error 
    end
    def withdraw(pin_number, amount)
        if pin_number == @pin 
            balance -= amount
            puts "Withdrew #{amount}. New balance: $#{@balance}."
        else
            puts pin_error
        end
    end
    
    private
    def pin 
        @pin = 1234
    end
    def pin_error
        return "Access denied: incorrect PIN."
    end
end

# ===== Launch School Work
# arraysLC
# stringMethods
# moreRubyOperators
# exercisesBasics
# exercisesVariables
# exercisesMethods
# flowControl
# loopExercises
# arrayExercises
hashExercises

# ===== Code Accademy work

# checking_account = Account.new("checking",1000)
# puts checking_account.display_balance(1234)

# puts another_proc_example2
#puts another_proc_example
# block_example
# lambda_example2
# compare_lambda_vs_proc
# lambda_example
# to_sym_array
# to_string_array
# proc_call
# proc_example
# block_test { puts ">>>> In my block" }
# puts collect_example
# puts first_n_primes(10)
#ternary_example1
# one_liner
#optional_push
# respondto_example
# upto_downto_examples
#puts implicitReturn(12)
# conditional_assignment
#ternary_example
#example_movies
#symbol_exmaple
#comparison
#hash_example
#multi_demensional_array
#splitSentenace
#nextMethod
#findString
#forExample
#logicalOperator
#basicOperator
#rubyOperator
#conditionalOperators
#createObjectFromLib
#iterateExample
#anotherCaseExample
#caseExample
#forExample
#whileExample
#conditionalExamples2
#conditionalExamples
#arrayExamples
#moreStringFunctions
#printStrings
#objectExample
=begin
rescue Exception => e
end
# Type is dynamic.
firstName = "Michael"
lastName = 'Irschick'
#puts "hello world"
print "Hello world #{firstName}\n"
print "#{firstName} #{lastName}" + "\n"
# Variables and expressions.
age = 49
days = getAgeInDays(age)
printf("#{firstName} #{lastName} age is " + "%d %d\n", age, days);
=end
