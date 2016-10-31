puts "powerball" =~ /b/

def has_a_b?(string)
  if string =~ /b/
    puts "We have a match!"
  else
    puts "No match here."
  end
end

has_a_b?("basketball")
has_a_b?("football")
has_a_b?("hockey")
has_a_b?("golf")

def has_a_b2?(string)
  if /b/.match(string)
    puts "We have a match!"
  else
    puts "No match here."
  end
end

has_a_b2?("basketball")
has_a_b2?("football")
has_a_b2?("hockey")
has_a_b2?("golf")

puts Math.sqrt(400)
puts Math::PI

t = Time.new(2008, 7, 4)
puts t
puts t.monday?
puts t.friday?

a = "hi there"
puts a
b = a
puts b
a = "not here"
puts a
puts b

a = "hi there"
b = a
puts b
a << ", Bob"
puts a 
puts b

a = [1, 2, 3, 3]
b = a
c = a.uniq

puts a
puts b
puts c

puts '======'
def test(b)
  b.map {|letter| "I like the letter: #{letter}"}
  # puts b
end

a = ['a', 'b', 'c']
c = test(a)
puts a
puts c


puts '===' + ' map! ' + '==='
def test(b)
  b.map! {|letter| "I like the letter: #{letter}"}
  # puts b
end

a = ['a', 'b', 'c']
c = test(a)
puts a
puts c

def take_block(&block)
  block.call
end

take_block do
  puts "Block being called in the method!"
end

def take_block(number, &block)
  block.call(number)
end

number = 42   
take_block(number) do |num|
  puts "Block being called in the method! #{num}"
end

talk = Proc.new do
  puts "I am talking."
end

talk.call

talk = Proc.new do |name|
  puts "I am talking to #{name}"
end

talk.call "Bob"

punt = Proc.new do |team|
  puts "I am punting to team: #{team}"
end

punt.call "Raiders"

def take_proc(proc)
  [1, 2, 3, 4, 5].each do |number|
    proc.call number
  end
end
proc = Proc.new do |number|
  puts "#{number}. Proc being called in the method!"
end

take_proc(proc)

# -------

def throw_ball(proc)
  [1, 2, 3].each do |number|
    proc.call number
  end
end

throw = Proc.new do |number|
  puts "#{number}. throw being called in the method!"
end

throw_ball(throw)

begin
  puts 'test'
  # perform some dangerous operation
rescue
  # do this if operation fails
  # for example, log the error
end

names = ['bob', 'joe', -1, nil, 'frank']
names.each do |name|
  begin
    puts "#{name}'s name has #{name.length} letters in it."
  rescue
    puts "Something went wrong!-->" + name.to_s
  end
end

zero = 0
puts "Before each call"
zero.each { |element| puts element } rescue puts "Nahanahahah you can't do that!"
puts "After each call"

zero = 0
puts "Before each call: bogus method"
zero.extract { |element| puts element } rescue puts "Nahanahahah you can't do that!"
puts "After each call: bogus method"

def divide(number, divisor)
  begin
    answer = number / divisor
  rescue ZeroDivisionError => e
    puts 'ZeroDivisionError found'
    puts e.message
  end
end
puts '------- catch divide by zero errors -------'
puts divide(16, 4)
puts divide(4, 0)
puts divide(14, 7)

def space_out_letters(person)
  return person.split("").join(" ")
end

def greet(person)
  return "H e l l o, " + space_out_letters(person)
end

def decorate_greeting(person)
  puts "" + greet(person) + ""
end

begin
  decorate_greeting("John")
  decorate_greeting(1)
rescue 
  puts 'error'
end

def has_lab?(string)
  if /lab/.match(string)
    puts "We have a match!"
  else
    puts "No match here."
  end
end
has_lab?("laboratory") 
has_lab?("experiment")
has_lab?("Pans Labyrinth")
has_lab?("elaborate")
has_lab?("polar bear")

def executeThis(&block)
  block.call
end
executeThis { puts "Hello!" }

def executeThis2(block)
  block.call
end

begin
  executeThis2 { puts "Hello from inside the execute method!" }
rescue
  puts 'error'
end
