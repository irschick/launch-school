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

arrayExercises