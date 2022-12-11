# Integers

Ruby supports two types of numbers:
1. Integers: An integer is simply a sequence of digits, e.g., 12, 100. Or in other words, numbers without decimal points are called Integers. In Ruby, Integers are object of class Fixnum(32 or 64 bits) or Bignum(used for bigger numbers).
2. Floating-point numbers: Numbers with decimal points are usually called floats, e.g., 1.2, 10.0. The floating-point numbers are object of class Float.

> Note: Underscore can be used to separate a thousand places e.g: 25_120.55 is the same as the number 25120.55.

Let’s start by taking a look at the class hierarchy of all the number related classes in Ruby:

```
Numeric
  Integer
    Fixnum
    Bignum
  Float
  Complex
  Rational
  BigDecimal (Standard Library)
```
As you can see, the Numeric class is the parent for all the number classes. Remember that you can use the ancestors method to discover the parent classes for any class.
```ruby
Fixnum.ancestors - Fixnum.included_modules => [Fixnum, Integer, Numeric, Object, BasicObject]
```
![Ruby Integer](RUBY%23INTEGER.png "Ruby Integer")

Thanks to rubyguides

Example 1: Basic arithmetic operations on numbers in Ruby is shown below. In Ruby, mathematical operations result in an integer only if all numbers used are integer numbers unless we get the result as a float.

```ruby
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
```
Example 2: In Ruby, for Modulus(%) operator the sign of the result is always the same as the sign of the second operand. So, 10 % -3 is -2 and -10 % 3 is 2.

```ruby
# Modulus operation on numbers
puts 10 % 3
puts 10 % -3
puts -10 % 3
```

Example 3: Other mathematical operations on numbers in Ruby is shown below.

```ruby
num1 = -20
num2 = 10.2
 
# abs() method returns absolute value of number
puts num1.abs() # 20
 
# round() method returns the number after rounding
puts num2.round() # 10
 
# ceil() and floor() function for numbers in Ruby
puts num2.ceil() # 11
puts num2.floor() # 10
```

```ruby 
1 == 2     #=> false
1 == 1.0   #=> true
```

Float vs BigDecimal
BigDecimal is a class that gives you arbitrary-precision decimal numbers.

```ruby
require 'bigdecimal'

BigDecimal("0.2") + BigDecimal("0.1") == 0.3 # true
```
Why don’t we always use BigDecimal then? Because it’s a lot slower!
BigDecimal is 12 times slower than Float, and that’s why it’s not the default 🙂

Integers In 2.4
Since Ruby 2.4 Fixnum & Bignum are deprecated, but behind the scenes they still work the same way.

Ruby switches from one type to another automatically.

Without changing the class.

This means that small Integer numbers still operate in the same way as a Fixnum.