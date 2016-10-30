def putsDivide
	puts '=========='
end
def putsDivide(string)
	puts '===== ' + string + ' ====='
end

@NUMS = [1, 2, 3, 4, 5]
def arraysPrintElement
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
