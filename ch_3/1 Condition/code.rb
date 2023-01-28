# If condition

 # Comparison and Logic
# puts " Please inter number "
# var = gets.to_i
 # p var == 1 # => true
 # p var <= 2 # => true
# p var >= 3





# p 10 <=> 10



# 10 <=> 20 return -1
# 10 <=> 20







# (=== vs ==)
# p "Test ==="
# p "hello" == "hello"
# p "abc".is_a?(String)
# p Float === 1.0
# => true
# >> Integer === 1
# => true
# p "String" === String
# => false






# == Vs Eql?()
# p 1.equal?(1)
# p 1 == 1.0





# normal If Condition
# print "Whats your name? "
# name = gets.chomp
# if name == "Zigor"
#   puts "#{name} is genius"
# else
#   puts "#{name} is number 2"
# end







# Else
# Zigor says if the person is intelligent or not
# print "Enter your name: "
# name = gets.chop
# if name == "Zigor"
#   puts "#{name} is intelligent"
# else
#   puts "#{name} is 2"
# end


# elsif.rb
# finds the greatest of three numbers

# a,b,c = 3,7,5
# if a >= b and a >= c
#   puts "a = #{a} is greatest"
# elsif b >= c and b >= a
#   puts "b = #{b} is greatest"
# else puts "c = #{c} is greatest"
# end
# p [3,7,5].max



# unless.rb
# print "Enter your age:"
# age = gets.to_i
# # # TODO Try do that via IF
# p "You are a minor" if !(age >= 18)













# Ternary conditional

# cond = 2 > 1
# p (cond ? "Yes" : "No")
#
# a,b = 3,5
# max = a > b  ? a : b
# p "max = #{max}"







# AND , OR




# v = 0
# "Hello" and v += 1
# p v

# nil and "hello" #==> nil
# false and "Goodbye" ==> false
# true and "Goodbye" ==> Goodbye
# [] and "Goodbye" ==> Goodbye
# {} and "Goodbye" ==> Goodbye




# # This program spells from one to five
#
# print "Enter a number (1-5):"
# a = gets.to_i
# # spell = ""
#
# case a
# when 1
#   spell = "one"
# when 2
#   spell = "two"
# when 3
#   spell = "three"
# when 4
#   spell = "four"
# when 5
#   spell = "five"
# else
#   spell = nil
# end
# puts "The number you entered is #{spell}" if spell




# a = "Zigor"
# case a
# when String
#   puts "Its a string"
# when Fixnum
#   puts "Its a number"
# end


# string = "I Love Ruby"
# # string = "I Love Python"
#
# case string
# when /Ruby/
#   puts "string contains Ruby"
# else
#   puts "string does not contain Ruby"
# end







# Object ID
# p "hello".freeze.object_id == "hello".freeze.object_id
# p 3.object_id ==  3.object_id




# Object.new.object_id  == Object.new.object_id  # => false
# p (21 * 2).object_id    == (21 * 2).object_id    # => true
# "hello".object_id     == "hello".object_id     # => false
# "hi".freeze.object_id == "hi".freeze.object_id # => true

# THANKS :)))