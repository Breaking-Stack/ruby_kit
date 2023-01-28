# condition

### Comparison and Logic
- Logical Operators
  Logical operators lets you determine whether something is true or not. For example one is one, that’s what humans think, let’s see what computers think about it. Fire your irb and type one equals to one as shown
```ruby
>> 1 == 1
=> true
>> 1 != 2
=> false
```
-  Triple Equals
   The === operator is used to check if a particular instance belongs to a class (i.e. type). For example “abc” is a String type object, 1 is a Integer, so lets apply === on them and check
```ruby
>> String === "abc"
=> true
>> Integer === 1
=> true
>> String === 7
=> false
```
But there is something strange, look at the example below
```ruby
>> "abc" === String
=> false
```
So always have the class left side and instance on the right.

- if
  The if keyword is used to execute a statement if a condition is satisfied. Take a look at the program below. Execute it.

```ruby
# if.rb

puts "Whats your name?"
name = gets.chop
puts "#{name} is genius" if name == "Zigor"
puts "#{name} is idiot" if name != "Zigor"
```
This is how the result would be if you give a name other than Zigor
```
Whats your name?
Karthik
Karthik is idiot
```

- if else
  Lets write the who’s genius program in another form, here we use if else condition instead of if. Take a look at the code below named if_else.rb

```ruby
# Zigor says if the person is intelligent or not
print "Enter your name: "
name = gets.chop
if name == "Zigor"
  puts "#{name} is intelligent"
else
  puts "#{name} is idiot"
end
```
The program when executed gives the same output as previous if.rb , what’s different is how the logic is represented inside the program. We see a thing called if name == "Zigor", then what has to be executed if the code is true comes after that as shown
```ruby
if name == "Zigor"
  puts "#{name} is intelligent"
```
Now we can put any number of statements after that if and all will be executed if the condition given is satisfied. Fine till now, but how will Ruby know where the if statement gets over? To say that things end here we put an end keyword as shown below.
```ruby
if name == "Zigor"
  puts "#{name} is intelligent"
end
```
Lets say that that condition(s) given in the if is not satisfied, and we need to do something if condition is invalid, then we put those statements that gets executed when conditions fails under the else keyword as shown
```ruby
if name == "Zigor"
  puts "#{name} is intelligent"
else
  puts "#{name} is idiot"
end
```
- elsif
  When we use if and else, the code under if gets executed if the condition is satisfied, else the code under else section gets executed. Let’s have a new scenario where the code under if is not satisfied, then the program immediately jumps to the else section, now the logic demands that we need to check another condition at the else level too, what should we do? To deal with such a scenario we can use the elsif command. Take a look at the code below
```ruby
# elsif.rb
# finds the greatest of three numbers

a,b,c = 3,7,5

if a >= b and a >= c
  puts "a = #{a} is greatest"
elsif b >= c and b >= a
  puts "b = #{b} is greatest"
else puts "c = #{c} is greatest"
end
```
- unless
  Unless is another way to check a condition. Let say that one is a minor unless he or she is greater than 18 years old. So how to code it in Ruby? Consider the program below, type it in a text editor and execute it.
```ruby
# unless.rb
print "Enter your age:"
age = gets.to_i
p "You are a minor" unless age >= 18
```
When executed this is what we get
```ruby
Enter your age:16
"You are a minor"
```
- unless else
  Just like if with else, we can have else in unless statement. Type in the program below and execute it

- case when
  Suppose you want to write a program that has a determined output for determined input, you can use the case when. Let’s say that we want to write a program that spells from 1 to 5, we can do it as shown in code/case_when.rb[case_when.rb], type the program in text editor and execute it.
```ruby
# case_when.rb
# This program spells from one to five

print "Enter a number (1-5):"
a = gets.to_i
spell = String.new

case a
  when 1
    spell = "one"
  when 2
    spell = "two"
  when 3
    spell = "three"
  when 4
    spell = "four"
  when 5
    spell = "five"
  else
    spell = nil
end

puts "The number you entered is "+spell if spell
```
- case when, checking the class type
  In Ruby everything is an object. Lets try out some example in irb to prove it
```ruby
>> 1.class
=> Integer
>> "Zigor".class
=> String

# case_when_checking_class_type.rb
a = "Zigor"
case a
when String
  puts "Its a string"
when Fixnum
  puts "Its a number"
end
```
- case when and regular expressions
  Case statements can match regular expressions too. Read Regular Expressions section to understand the example below.
```ruby
# case_when_regexp.rb

string = "I Love Ruby"
# string = "I Love Python"

case string
when /Ruby/
  puts "string contains Ruby"
else
  puts "string does not contain Ruby"
end
```

- Ternary Operator
  The ? : is called ternary operator. It can be used as a simple if. Take the program shown below. Concentrate on max = a > b ? a : b
```ruby
a,b = 3,5
max = a > b  ? a : b
p "max = "+max.to_s
```

- Assigning logic statement to variables
```ruby
max = a > b  ? a : b
```

- &&, and, ||, or
- and
  Boolean and operator.
  if first condition not nil, or false ? will return right side, if nil, or false will return blank?
```ruby
nil and "hello" ==> nil
false and "Goodbye" ==> false
true and "Goodbye" ==> Goodbye
[] and "Goodbye" ==> Goodbye
{} and "Goodbye" ==> Goodbye
```
Differs from && in that and has lower precedence. In this example:
```ruby
puts "Hello" and "Goodbye"
```
the subexpression puts "Hello" is executed first, and returns nil. The whole expression thus reduces to:
```ruby
nil and "Goodbye"
```
which reduces to nil. In this example, however:
```ruby
puts "Hello" && "Goodbye"
```
the expression "Hello" && "Goodbye" is used as the argument to puts. This expression evaluates to “Goodbye”; therefore, the whole statement prints “Goodbye”.

- <=>

Combined comparison operator. Returns 0 if first operand equals second, 1 if first operand is greater than the second and -1 if first operand is less than the second.
```ruby
(10 <=> 20) # returns -1
```

- .eql?

True if the receiver and argument have both the same type and equal values.
```ruby
1 == 1.0 # returns true, but 1.eql?(1.0) is false
```

- equal?

True if the receiver and argument have the same object id.
```ruby
a=10, b=20: if aObj is duplicate of bObj then aObj == bObj is true, a.equal?bObj is false but a.equal?aObj is true.
```