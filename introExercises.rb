# Exercises

# 1
# Use the each method of Array to iterate over [1, 2, 3, 4, 5, 6, 7, 8, 9, 10], and print out each value.

a = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
a.each_index { |i| puts "This is index #{i}" }

puts '----'
# Same as above, but only print out values greater than 5.
a = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
a.each_index { |i|  puts "This is index #{i}" if i >5 }
  

# Now, using the same array from #2, use the select method to extract all odd numbers into a new array.
puts '----'
a = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
b = a.select { |number| number%2>0 }
puts b

# Append "11" to the end of the original array. Prepend "0" to the beginning.
puts '----'
a << 11
a.unshift(0)
puts a


# Get rid of "11". And append a "3".
puts '----'
a.pop
a << 3
puts a


# Get rid of duplicates without specifically removing any one value.
puts '----'
a.uniq!
puts a

puts '----'
# What's the major difference between an Array and a Hash?
array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
hash1 = {:name=>'Michael Irschick',:address=>'100 Grand'}
puts array
puts hash1
# hash contains a key value pair for referencing by key.

# Create a Hash using both Ruby syntax styles.
hash1 = {:name=>'Michael Irschick',:address=>'100 Grand'}
puts hash1
hash1 = {name:'Michael Irschick',address:'100 Grand'}
puts hash1


# Suppose you have a hash h = {a:1, b:2, c:3, d:4}
# 1. Get the value of key `:b`.
# 2. Add to this hash the key:value pair `{e:5}`
# 3. Remove all key:value pairs whose value is less than 3.5
h = {a:1, b:2, c:3, d:4}
puts h.fetch(:b,':b not found')
h[:e] = 5
puts h.fetch(:e,':e not found')
puts h
h.delete_if {|key, value| value.to_i < 3.5 }   
puts h


array1 = ['cat','dog']
array2 = [0,1,2]
h = {array1: array1, array2: array2}
puts h
# Can hash values be arrays? Can you have an array of hashes? (give examples)
h1 ={:name=>'Michael Irschick',:address=>'100 Grand'}
h2 = {:movie1=>'Michael Irschick',:movie2=>'100 Grand'}
a = [h1,h2]
puts a

# Look at several Rails/Ruby online API sources and say which one you like best and why.
# https://docs.ruby-lang.org/en/2.0.0/  ===> lots of code examples
# http://ruby-doc.org/core-2.3.1/  ==> easy to use docs


# Given the following data structures. 
# Write a program that moves the information from the array into the empty hash that applies to the correct person.
# contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
#             ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

# contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

contact_data = [
                  ["joe@email.com", "123 Main st.", "555-123-4567"],
                  ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]
                ]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

contacts["Joe Smith"][:email] = contact_data[0][0]
contacts["Joe Smith"][:address] = contact_data[0][1]
contacts["Joe Smith"][:phone] = contact_data[0][2]

contacts["Sally Johnson"][:email] = contact_data[1][0]
contacts["Sally Johnson"][:address] = contact_data[1][1]
contacts["Sally Johnson"][:phone] = contact_data[1][2]

puts contacts

# Solution
# Video Walkthrough
# Using the hash you created from the previous exercise, demonstrate how you would access Joe's email and Sally's phone number?
puts contacts["Joe Smith"][:email] 
puts contacts["Sally Johnson"][:phone] 
puts "Joe's email is: #{contacts["Joe Smith"][:email]}"
puts "Sally's phone number is: #{contacts["Sally Johnson"][:phone]}"

# In exercise 12, we manually set the contacts hash values one by one. 
# Now, programmatically loop or iterate over the contacts hash from exercise 12, and populate the associated data from the contact_data array. Hint: you will probably need to iterate over ([:email, :address, :phone]), and some helpful methods might be the Array shift and first methods.

# Note that this exercise is only concerned with dealing with 1 entry in the contacts hash, like this:

# contact_data = ["joe@email.com", "123 Main st.", "555-123-4567"]
# contacts = {"Joe Smith" => {}}
# As a bonus, see if you can figure out how to make it work with multiple entries in the contacts hash.



contact_data = ["joe@email.com", "123 Main st.", "555-123-4567"]
contacts = {"Joe Smith" => {}}
fields = [:email, :address, :phone]

contacts.each do |name, hash|
  fields.each do |field|
    hash[field] = contact_data.shift
  end
end
puts contacts

contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]
contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}
fields = [:email, :address, :phone]

contacts.each_with_index do |(name, hash), idx|
  fields.each do |field|
    hash[field] = contact_data[idx].shift
  end
end
puts contacts

# Use Ruby's Array method delete_if and String method start_with? to delete all of the words that begin with an "s" in the following array.
# arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']
# Then recreate the arr and get rid of all of the words that start with "s" or starts with "w".

arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']
arr.delete_if {|word| word.to_s.start_with? 's' } 
puts arr
puts '---'
arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']
arr.delete_if {|word| word.to_s.start_with?('s') || word.to_s.start_with?('w') } 
puts arr

# Then recreate the arr and get rid of all of the words that start with "s" or starts with "w".


# Solution
# Video Walkthrough
# Take the following array:
a = ['white snow', 'winter wonderland', 'melting ice',
     'slippery sidewalk', 'salted roads', 'white trees']
p a
a = a.map { |pairs| pairs.split }
a = a.flatten
p a

# a = ['white snow', 'winter wonderland', 'melting ice',
#      'slippery sidewalk', 'salted roads', 'white trees']
# and turn it into a new array that consists of strings containing one word. (ex. ["white snow", etc...] → ["white", "snow", etc...]. Look into using Array's map and flatten methods, as well as String's split method.

hash1 = {shoes: "nike", "hat" => "adidas", :hoodie => true}
hash2 = {"hat" => "adidas", :shoes => "nike", hoodie: true}

if hash1 == hash2
  puts "These hashes are the same!"
else
  puts "These hashes are not the same!"
end