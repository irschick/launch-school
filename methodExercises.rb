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