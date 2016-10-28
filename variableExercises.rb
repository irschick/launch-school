
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