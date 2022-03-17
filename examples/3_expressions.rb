# 5
# 1 + 2
# "a" + "b" + "c"
# 100 - 5 * (2 - 1)
# x + y

## Valid Variable Name

# x
# y2
# _x
# this_is_a_test

## Invalid Variable Name

# 7x (starts with a digit)
# this is a test (not a single word)
# this'is@a'test! (contains invalid characters: ', @, and !)
# this-is-a-test Invalid (looks like subtraction)

## Comparison Operators and Expressions

# x = 1
# y = 2

# puts "when x = #{x} and y = #{y}\n\n"

# puts "x > y is #{x > y}" # Greater than

# puts "x < y is #{x < y}" # Less than

# puts "x == y is #{x == y}" # Equal to

# puts "x >= y is #{x >= y}" # Greater than or equal to

# puts "x <= y is #{x <= y}" # Less than or equal to

# puts "x <=> y is #{x <=> y}" # Comparison; returns 0 if x and y are equal, 1 if x is higher, and -1 if x is lower

# puts "x != y is #{x != y}" # Not equal to

# age = 24
# puts "You're a teenager" if age > 12 && age < 20
# puts "You're NOT a teenager" unless age > 12 && age < 20

## Looping Through Numbers with Blocks and Iterators

# 5.times do puts "times Test without iterator" end
# 5.times do |i| puts "times Test with iterator" end
# 1.upto(5) do |i| puts "upto Test number #{i}" end
# 10.downto(5) { |i| puts "downto Test number #{i}" }
# 0.step(50, 10) {|i| puts "step Test number #{i}"}

## Floating Point Numbers

# a = 10
# b = 3
# c = 3.0

# puts a / b
# puts a / c
# puts a / b.to_f
# puts a / c.to_i

## String Literals & Expressions

# x = "Test"
# y = "String"
# puts "Success!" if x + y == "TestString"

# x = %q{This is a test
#   of the multi
#   line capabilities}
# puts x

# y = <<END_MY_STRING_PLEASE
# This is the string
# And a second line
# END_MY_STRING_PLEASE
# puts y

# puts "abc" * 5

## Compare throught it's ASCII value
# puts "x" > "y"
# puts "y" > "x"

# puts "x".ord
# puts 120.chr
# puts "y".ord
# puts 121.chr

## Interpolation

# x = 10
# y = 20
# puts "#{x} + #{y} = #{x + y}"


## String Methods

# puts "Test" + "Test" # TestTest

# puts "test".capitalize # Test

# puts "Test".downcase # test

# puts "Test".chop # Tes

# puts "Test".next # Tesu

# puts "Test".reverse # tseT

# puts "Test".sum # 416

# puts "Test".swapcase # tEST

# puts "Test".upcase # TEST

# puts "Test".upcase.reverse # TSET

# puts "Test".upcase.reverse.next # TSEU


## Regular Expressions and String Manipulation

## Substitutions

puts "foobar".sub('bar', 'foo')
puts "this is a test".gsub('i', '')

x = "This is a test"
puts x.sub(/^../, 'Hello') # substitute first 2 words

puts x.sub(/..$/, 'Hello') # substitute last 2 word

## Iteration with a Regular Expression

# "xyz".scan(/./) { |letter| puts letter }
# "This is a test".scan(/../) { |x| puts x }
# "This is a test".scan(/\w\w/) { |x| puts x }

# "The car costs $1000 and the cat costs $10".scan(/\d+/) do |x| # + after a character in a regular expression means match one or more of that type
#   puts x
# end

# "The car costs $1000 and the cat costs $10".scan(/\d/) do |x|
#   puts x
#  end

# "This is a test".scan(/[aeiou]/) { |x| puts x }

# "This is a test".scan(/[a-m]/) { |x| puts x }


## Matching

# puts "String has vowels" if "This is a test" =~ /[aeiou]/
# puts "String contains no digits" unless "This is a test" =~ /[0-9]/
# puts "String has vowels" if "This is a test".match(/[aeiou]/)

# x = "This is a test".match(/(\w+) (\w+)/)
# puts x[0]
# puts x[1]
# puts x[2]


## Arrays and Lists

# x = [] # don’t need to be set up
# x << "Word"
# x << "Play"
# x << "Fun"
# puts x.pop
# puts x.pop
# puts x.length
# puts x.join(', ')

# x = [1, 2, 3, 4]

# puts x[2]

# x[2] += 1
# puts x[2]

# x[2] = "Fish" * 3
# puts x[2]

## Splitting Strings into Arrays

# puts "This is a test".scan(/\w/).join(',')
# puts "Short sentence. Another. No more.".split(/\./).inspect
# puts "Words with lots of spaces".split(/\s+/).inspect
# p "Words with lots of spaces".split(/\s+/) # p is an alternative to using inspect

## Array Iteration

# [1, "test", 2, 3, 4].each { |element| puts element.to_s + "X" }
# [1, 2, 3, 4].map { |element| element * 2 }
# [1, 2, 3, 4].collect { |element| element * 2 } # map is functionally equivalent to collect

# a = [1, "test", 2, 3, 4]
# i = 0
# while (i < a.length)
#  puts a[i].to_s + "X"
#  i += 1
# end

## Array Addition and Concatenation

# x = [1, 2, 3]
# y = ["a", "b", "c"]
# z = x + y
# p z

## Array Subtraction and Difference

# x = [1, 2, 3, 4, 5]
# y = [1, 2, 3]
# z = x - y
# p z

## Checking for an Empty Array

# x = []
# puts "x is empty" if x.empty?

## Checking an Array for a Certain Item

# x = [1, 2, 3]
# p x.include?("x")
# p x.include?(3)

## Accessing the First and Last Elements of the Array

# x = [1, 2, 3]
# puts x.first
# puts x.last
# puts x.first(2).join("-")
# p x.reverse
