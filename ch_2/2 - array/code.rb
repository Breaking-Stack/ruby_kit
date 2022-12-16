name_of_array= Array.new

arr = Array['a', 'b', 'c', 'd','e', 'f']
# or
arr1 = ['a', 'b', 'c', 'd','e', 'f']
arr = Array.new(4) # => [nil, nil, nil, nil]  create array with 4 elments every element is nil

names = Array.new(4, "mac") # => ["mac", "mac", "mac", "mac"]

b = [1,2,3,4]
b.size # 4

a = [1,2,3,4,5,6,7]
a.length # 7

c = [1,2,3,4,4,7,7,7,9]
# way 1
c.count #=> 9
# way 2
c.count(7) # => 3
# way 3
c.count { |i| i>5 } # => 4 As there are 4 elements in the array having value greater than 5.




# creating string using []
str = ["x", "y", "a", "b"]

# accessing array elements
# using index
puts str[1] # y
# using the negative index
puts str[-1] # b

str = ["x", "y", "a", "b"]
# accessing multiple array elements
puts str[2,3] # => a b

arr = [1, 2, 3, 4, 5, 6]
arr[2]    #=> 3
arr[100]  #=> nil
arr[-3]   #=> 4
arr[2, 3] #=> [3, 4, 5]
arr[1..4] #=> [2, 3, 4, 5] # from 1 to 4 index
arr[1..-3] #=> [2, 3, 4]

arr = ['a', 'b', 'c', 'd', 'e', 'f']
arr.fetch(100) #=> IndexError: index 100 outside of array bounds: -6...6
arr.fetch(100, "oops") #=> "oops" => default value if index outside of array


arr = [1, 2, 3, 4, 5, 6]
arr.first #=> 1
arr.last  #=> 6

arr = [1, 2, 3, 4, 5, 6]
arr.take(3) #=> [1, 2, 3]

arr.drop(3) #=> [4, 5, 6]

browsers = ['Chrome', 'Firefox', 'Safari', 'Opera', 'IE']

browsers.empty? #=> false  => To check whether an array contains any elements at all
browsers.include?('Konqueror') #=> false => To check whether a particular item is included in the array


arr = [1, 2, 3, 4]
# Items can be added to the end of an array by using either `push or <<`
arr.push(5) #=> [1, 2, 3, 4, 5]
arr << 6    #=> [1, 2, 3, 4, 5, 6]
# unshift will add a new item to the beginning of an array.
arr.unshift(0) #=> [0, 1, 2, 3, 4, 5, 6]
# With insert you can add a new element to an array at any position.
arr.insert(3, 'apple')  #=> [0, 1, 2, 'apple', 3, 4, 5, 6]
# Using the insert method, you can also insert multiple values at once:
arr.insert(3, 'orange', 'pear', 'grapefruit')
#=> [0, 1, 2, "orange", "pear", "grapefruit", "apple", 3, 4, 5, 6]


# The method pop removes the last element in an array and returns it:
arr =  [1, 2, 3, 4, 5, 6]
arr.pop #=> 6
arr #=> [1, 2, 3, 4, 5]

# To retrieve and at the same time remove the first item, use shift:
arr.shift #=> 1
arr #=> [2, 3, 4, 5]

# To delete an element at a particular index:
arr.delete_at(2) #=> 4
arr #=> [2, 3, 5]

# To delete a particular element anywhere in an array, use delete:
arr = [1, 2, 2, 3]
arr.delete(2) #=> 2
arr #=> [1,3]