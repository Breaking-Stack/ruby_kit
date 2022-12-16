# Note: Underscore can be used to separate a thousand places e.g: 25_120.55 is the same as the number 25120.55.
25_120.55  # =>  25120.55


# both will return true from ruby version  2.4
[2.is_a?(Fixnum) , 2.is_a?(Bignum)]

23  + 0.5
BigDecimal("0.2") + BigDecimal("0.14334434030434304030943034343434334") == 0.3 # true


# Addition of two integers
puts 2 + 3
# Addition of integer and float
puts 2 + 3.0
# Subtraction of two integers
puts 5 - 3
# Multiplication and division of two integers
puts 2 * 3
puts 6 / 2
# Exponential operation
puts 2 ** 3

# Modulus operation on numbers
puts 10 % 3
puts 10 % -3
puts -10 % 3


# other methods
num1 = -20
num2 = 10.2
# abs() method returns absolute value of number
puts num1.abs() # 20
# round() method returns the number after rounding
puts num2.round() # 10
# ceil() and floor() function for numbers in Ruby
puts num2.ceil() # 11
puts num2.floor() # 10

1 == 2     #=> false
1 == 1.0   #=> true