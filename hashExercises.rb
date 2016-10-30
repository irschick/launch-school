def putsDivide
  puts '=========='
end
def putsDivide(string)
  puts '===== ' + string + ' ====='
end

def hashExercises
  # using diff types of hash keys
  hash_a = {"height" => "6 ft"}     # string as key
  puts hash_a
  hash_a = {["height"] => "6 ft"}   # array as key
  puts hash_a
  hash_a = {1 => "one"}             # integer as key
  puts hash_a
  hash_a = {45.324 => "forty-five point something"}  # float as key
  puts hash_a
  hash_a =  {{key: "key"} => "hash as a key"}  # hash as key
  puts hash_a

  putsDivide('look for key')
  # look for key
  # The has_key? method allows you to check if a hash contains a specific key. It returns a boolean value.
  name_and_age = { "Bob" => 42, "Steve" => 31, "Joe" => 19}
  puts name_and_age
  puts name_and_age.has_key?("Steve")
  puts name_and_age.has_key?("Larry")

  # The select method allows you to pass a block and will return any key-value pairs that evaluate to true when ran through the block.
  puts name_and_age.select { |k,v| k == "Bob" }
  puts name_and_age.select { |k,v| (k == "Bob") || (v == 19) }
  good_players = { "Marcus Allen" => 32, "Joe Montana" => 16, "Dave Casper" => 87}
  ok_players = { "James Jones" => 12, "Joe Orten" => 11, "Frankie f." => 65}
  puts good_players.select { |k,v| (k == "Marcus Allen") || (v==87)}

  # The fetch method allows you to pass a given key and it will return the value for that key if it exists. You can also specify an option for return if that key is not present. 
  puts good_players.fetch("Joe Montana",'not found')
  puts good_players.fetch("Joe Montana1",'not found')

  putsDivide('push to array')
  puts good_players.to_a
  puts good_players.to_a.length

  putsDivide('output keys, then values')
  puts good_players.keys
  puts good_players.values

  family = {  uncles: ["bob", "joe", "steve"],
            sisters: ["jane", "jill", "beth"],
            brothers: ["frank","rob","david"],
            aunts: ["mary","sally","susan"]
          }
  puts family.select { |k,v| (k == :sisters) || (k == :brothers) }
  
  # merge hashes
  putsDivide('merge')
  ok_players.merge(good_players)
  puts ok_players
  puts good_players

  putsDivide('merge!')
  ok_players.merge!(good_players)
  puts good_players
  puts ok_players

  putsDivide('loop through keys/values!')
  h = { "a" => 100, "b" => 200 }
  h.each {|key, value| puts "#{key} is #{value}" }
  h.each {|key, value| puts "#{key}" }
  h.each {|key, value| puts "#{value}" }
  h.each_key { |key| puts key }
  h.each_value { |value| puts value }

  opposites = {positive: "negative", up: "down", right: "left"}
  opposites.each_key { |key| puts key }
  opposites.each_value { |value| puts value }
  opposites.each { |key, value| puts "The opposite of #{key} is #{value}" }

  putsDivide('fetch name')
  person = {name: 'Bob', occupation: 'web developer', hobbies: 'painting'}
  puts person.fetch(:name)

  putsDivide('look for value')
  search_value = 'painting'
  puts person.select { |k,v| (v == search_value) }
  puts person.has_value?(search_value)

  words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

  result = {}
  putsDivide('look for amagrams')
  words.each do |word|
    key = word.chars.sort { |a, b| a.casecmp(b) }.join
    if result.has_key?(key)
      puts 'found key in result hash: ' + key
      result[key].push(word)
    else
      puts 'did not find key, so adding key:' + key
      result[key] = [word]
    end
  end
  putsDivide('Print out results')
  result.each do |k, v|
    puts "------"
    p 'key:' + k.to_s
    print 'values:'
    puts v.to_s
  end

  x = "hi there"
  my_hash = {x: "some value"}
  my_hash2 = {x => "some value"}
  puts my_hash
  puts my_hash2
end
hashExercises
