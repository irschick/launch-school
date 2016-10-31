def putsDivide(string)
  puts '===== ' + string + ' ====='
end

def basics
  puts 1 + 2
  puts 1.0 + 2.0
  puts 2.0 * 3.0
  puts 5.0 - 8.0
  puts 9.0 / 2.0    
  putsDivide('basics')

  puts 1+2
  puts 2*3
  puts 5-8
  puts 9/2
  putsDivide('basics')

  puts 5 * (12-8) + -15
  puts 98 + (59872 / (13*8)) * -52
  putsDivide('basics')

  # how many hours are in a year?
  puts 24*365
  # how many minutes are in a decade?
  puts 60*24*365*10
  # how many seconds old are you?
  puts 60*60*24*365*49.8
  # how many chocolates do you hope to eat in your life? 
  puts 365*49.8

  # Warning: This part of the program could take a while to compute!
  # Here's a tougher question:
  # If I am 1246 million seconds old, how old am I?
  age_in_sec = 1246 * 1000000
  age_in_min = age_in_sec / 60
  age_in_day = age_in_min / 24
  age_in_year = age_in_day / 365
  puts age_in_year
end

def stringsExercises
  puts 'Hello.'
  puts 'Ruby rocks.'
  puts '5 is my favorite number... what is yours?'
  puts 'Snoopy says #%^?&*@! when he stubs his toe.'
  puts '     '
  puts ''

  puts 'I like' + 'apple pie.'
  puts 'I like ' + 'apple pie.'
  puts 'I like' + ' apple pie.'
  puts 'blink ' * 4

  puts  12  +  12
  puts '12' + '12'
  puts '12  +  12'
  puts 'You\'re swell!'
  puts 'backslash at the end of a string:  \\'
  puts 'up\\down'
  puts 'up\down'
end

def variables
  myString = '...you can say that again...'
  puts myString
  puts myString
  name = 'Patricia Rosanna Jessica Mildred Oppenheimer'
  puts 'My name is ' + name + '.'
  puts 'Wow!  ' + name + ' is a really long name!'

  puts '15'.to_f
  puts '99.999'.to_f
  puts '99.999'.to_i
  puts ''
  puts '5 is my favorite number!'.to_i
  puts 'Who asked you about 5 or whatever?'.to_i
  puts 'Your momma did.'.to_f
  puts ''
  puts 'stringy'.to_s
  puts 3.to_i

  # Write a program which asks for a person's first name, then middle, then last. Finally, it should greet the person using their full name.
  puts 'first name'
  first_name = gets.chomp
  puts 'middle name'
  middle_name = gets.chomp
  puts 'last name'
  last_name = gets.chomp
  puts 'Hello ' + first_name + ' ' + middle_name + ' ' + last_name

  puts 'What is your full name?'
  name = gets.chomp
  puts 'Did you know there are ' + name.length.to_s +
       ' characters in your name, ' + name + '?'
  puts 'name in reverse ' + name.reverse 
  letters = 'aAbBcCdDeE'
  puts letters.upcase
  puts letters.downcase
  puts letters.swapcase
  puts letters.capitalize
  puts ' a'.capitalize
  puts letters

  lineWidth = 50
  puts(                'Old Mother Hubbard'.center(lineWidth))
  puts(               'Sat in her cupboard'.center(lineWidth))
  puts(         'Eating her curds an whey,'.center(lineWidth))
  puts(          'When along came a spider'.center(lineWidth))
  puts(         'Which sat down beside her'.center(lineWidth))
  puts('And scared her poor shoe dog away.'.center(lineWidth))
  lineWidth = 40
  str = '--> text <--'
  puts str.ljust  lineWidth
  puts str.center lineWidth
  puts str.rjust  lineWidth
  puts str.ljust(lineWidth/2) + str.rjust(lineWidth/2)
  puts '-------------'.center(50)

  puts 'What do you want?'
  emp_request = gets.chomp 
  # emp_request = 'I want a raise'
  boss_response = 'WHADDAYA MEAN \'' + emp_request.upcase + '\'?!?  YOU\'RE FIRED!!'
  # boss_response = 'WHADDAYA MEAN \"' + emp_request.upcase + '\"?!?  YOU\'RE FIRED!!'
  puts boss_response
  # puts boss_response1

  page_width = 60

  line1_left = "Chapter 1:  Numbers" 
  line1_right = 'page 1'
  line1 = line1_left + line1_right.rjust(page_width-line1_left.length)

  line2_left = "Chapter 2:  Letters" 
  line2_right = 'page 72'
  line2 = line2_left + line2_right.rjust(page_width-line2_left.length)
  
  line3_left = "Chapter 3:  Variables" 
  line3_right = 'page 118'
  line3 = line3_left + line3_right.rjust(page_width-line3_left.length)

  puts 'Table of Content'.center(page_width)
  puts line1
  puts line2
  puts line3

# Chapter 1:  Numbers                        page 1
# Chapter 2:  Letters                       page 72
# Chapter 3:  Variables                    page 118
end

def mathStuff
  puts(Math::PI)
  puts(Math::E)
  puts(Math.cos(Math::PI/3))
  puts(Math.tan(Math::PI/4))
  puts(Math.log(Math::E**2))
  puts((1 + Math.sqrt(5))/2)
  puts rand
  puts rand
  puts rand
  puts(rand(100))
  puts(rand(100))
  puts(rand(100))
  puts(rand(1))
  puts(rand(1))
  puts(rand(1))
  puts(rand(99999999999999999999999999999999999999999999999999999999999))
  puts('The weatherman said there is a '+rand(101).to_s+'% chance of rain,')
  puts('but you can never trust a weatherman.')
end

def branching
  puts 'I am a fortune-teller.  Tell me your name:'
  name = gets.chomp
  if name == 'Chris'
    puts 'I see great things in your future.'
  else
    puts 'Your future is... Oh my!  Look at the time!'
    puts 'I really have to go, sorry!'
  end

  command = ''
  while command != 'bye'
    puts 'What is your command'
    command = gets.chomp
    puts 'you typed:' + command
  end

  puts 'Come again soon!'
  puts 'Hello, what\'s your name?'
  name = gets.chomp
  puts 'Hello, ' + name + '.'
  if (name == 'Chris' || name == 'Katy')
    puts 'What a lovely name!'
  end

  iAmChris  = true
  iAmPurple = false
  iLikeFood = true
  iEatRocks = false

  puts (iAmChris  and iLikeFood)
  puts (iLikeFood and iEatRocks)
  puts (iAmPurple and iLikeFood)
  puts (iAmPurple and iEatRocks)
  puts
  puts (iAmChris  or iLikeFood)
  puts (iLikeFood or iEatRocks)
  puts (iAmPurple or iLikeFood)
  puts (iAmPurple or iEatRocks)
  puts
  puts (not iAmPurple)
  puts (not iAmChris)
end

def bottlesSong
  beerCount = 99
  while beerCount >0
    puts beerCount.to_s + ' bottles of beer on the wall, take one down and pass it around'
    beerCount = beerCount - 1
  end
end

def leap_year(year_start, year_end)
  done = false
  year = year_start
  while !done
    if year % 400 == 0 
      puts 'leap:' + year.to_s
    elsif year % 100 == 0
      # false
    elsif year % 4 == 0
      # true
      puts 'leap:' + year.to_s
    else
      # false
    end
    if year > year_end
      done = true
    else
      year = year + 1
    end
  end
end

def deafGrandma
  grandma_can_hear = false
  bye_count = 0
  can_leave = false
  while !can_leave 
    puts 'WHAT DID YOU SAY!!!!'
    your_response = gets.chomp
    if your_response == your_response.upcase 
      grandma_can_hear = true
    else
      grandma_can_hear = false
    end
    if your_response.upcase == 'BYE'
      bye_count = bye_count + 1
    else
      bye_count = 0
    end  
    year = 1930 + rand(21)
    if grandma_can_hear == false
      puts 'UH?!  SPEAK UP, SONNY!'
    else
      puts 'NO, NOT SINCE ' + year.to_s + '!'
    end
    if (grandma_can_hear)  && (bye_count == 3)
      can_leave = true
    end 
  end
end
# basics
# stringsExercises
# variables
# mathStuff
# branching
# bottlesSong
# deafGrandma
leap_year(0,2020)
