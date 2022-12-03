
# Getting Started
## Installing
first we need to
[Install Ruby Env And Rails](https://gorails.com/setup)


## Run Ruby File and IRB
after installing Ruby we can go to terminal and try `irb`
will see ruby console like

` irb(main):001:0> # u can write anything like 1 + 1 `

create any file have same code you tested like 1 + 1 and named by test.rb

to run that file

`ruby apps/ruby_kit/codes/test.rb # Output=> 2`


## Used By

Ruby is used by the following companies:

- shopify
- Twitter After a couple of years, Twitter was rewritten using Scala, but Ruby is still a part of its back end.
- GitHub
- Airbnb

[List of more companies](https://distantjob.com/blog/ruby-on-rails-companies/)

## Variables
Variables are something that stores value in it.
You can imagine them as a box which can hold pebbles.
If a box named a holds five pebbles then its value is 5, if another box b holds three pebbles, then its value is 3.

```ruby
>> a = 5
=> 5
>> b = 3
=> 3
>> c = a + b
=> 8
```
#### Naming Convention
- There must be no space in between variable names
```
total_price = 10 (Accept)

total price = 10 (Not Accept)
```

- There must be no special character except underscore ` _` in a variable name
```
total_price (Accept)
total!price = 10 (Not Accept)
```
- A variable name can have numbers
```
total3 = 10 (Accept)
```
- A variable name must not start with a number
```
3total = 10 (Not Accept)
```
- A variable must either start with a character or an underscore
```
_total = 10 (Accept)
x3 = 10 (Accept)
10text = "" (Not Accept)
!total = 10 (Not Accept)
```
- Capital character should not appear at the start of variable
```
Total = 10 
Total = Total + 10 (Accept but will see some warning)
(irb):3: warning: already initialized constant Total
(irb):1: warning: previous definition of Total was here
```

## Constants
Unlike variables, some values must be constant,
for example the radius of the Earth is constant, the speed of light is constant.
In problems that deal with these kind of issues, or in situations where you are absolutely certain that some values won’t change, you can use constants.

A constant can be thought as a variable whose value doesn’t change. Constants in Ruby starts with a capital letter
```
Total = 10
```

## Strings
In computers text are called as string
```
>> "hello world"
=> "hello world"
```
Now let’s try the above example by surrounding the above hello world with single quotes
```
>> 'hello world'
=> "hello world"
```

Well you do get the same response. So what’s the difference between single and double quotes? Take a look at the following example
```
>> time_now = Time.new # Get the current time into a variable
=> Fri Jan 15 16:43:31 +0530 2010
>> "Hello world, the time is now #{time_now}"
=> "Hello world, the time is now Fri Jan 15 16:43:31 +0530 2010"
>> 'Hello world, the time is now #{time_now}'
=> "Hello world, the time is now \#{time_now}"
```

At first, we declare a variable called time_now and store the current time into it. The current time in Ruby is got by Time.new command. Now we have a variable, and we can embed it into a string by putting it like #{put_your_variable_here}. So we want to tell the world the time now is something, so we give a command as shown

```
>> "Hello world, the time is now #{time_now}"
=> "Hello world, the time is now Fri Jan 15 16:43:31 +0530 2010"
```

and we get a proper result. Note that you have enclosed the string with a double quotes. Now let’s try the same thing with single quotes
```
>> 'Hello world, the time is now #{time_now}'
=> "Hello world, the time is now \#{time_now}"
```

We see that in this case the world is not able to see what time it is, rather it’s able to see a ugly string as shown

```
"Hello world, the time is now \#{time_now}"
```

## String Functions

string like `name =  "Haider" `
and when to check Data Type for Variable name
`name.class # OutPut  => String `

let's Learn Prints way
we can print by using `p` ,`print` ,`puts` ,`pp`
```
name = "Haider"
print name # OutPut  => Haider
```

### merging text
```
3.0.3 :012 > "xx" + "yy"
=> "xxyy"
3.0.3 :013 > "xx" * 10
=> "xxxxxxxxxxxxxxxxxxxx"
3.0.3 :014 >
```
### draw diagram with memory when explain !
```
3.0.3 :006 > x = "text"
 => "text" 
3.0.3 :007 > x.upcase
 => "TEXT" 
3.0.3 :008 > y = x.upcase
 => "TEXT" 
3.0.3 :009 > x
 => "text" 
3.0.3 :010 > y = x.upcase! 
 => "TEXT" 
3.0.3 :011 > x
 => "TEXT" 
3.0.3 :012 > 
```
### reverse
if we call name like `name.reverse # Output => rediaH`
### upcase vs upcase!
| Method        | Example                                                                                                               |
|---------------|-----------------------------------------------------------------------------------------------------------------------|
| upcase        | `name.upcase # Output => HAIDER` but when call name after it `name # Output => Haider` not impact with main Variable  |
| upcase!       | `name.upcase! # Output => HAIDER` but when call name after it `name # Output => HAIDER` did impact with main Variable |

### downcase vs downcase!
| Method        | Example                                                                                                                 |
|---------------|-------------------------------------------------------------------------------------------------------------------------|
| upcase        | `name.downcase # Output => haider` but when call name after it `name # Output => Haider` not impact with main Variable  |
| upcase!       | `name.downcase! # Output => haider` but when call name after it `name # Output => haider` did impact with main Variable |

## gsub
`gsub!` same `downcase!` , `upcase!` ,  `select!`
gsub is to replace parts of a string.
`str = "white chocolate"`

`str.gsub("white", "dark") # OutPut => dark chocolate`

### to_i vs to_s vs to_f
to_i : mean to integer value
to_s : mean to string value
#### to_i
ex : `x = "32"`
`x.to_i # Output => 32`
#### to_s
when use to_s in number convert to string

`(3 + 3).to_s + "2" Output => 62`

#### to_f
when try without to_f `7/2 # Output => 3`

if want decimal result do that `7.to_f/2 # Output => 3.5`

### is_a?
once need to validate any element is related for any class can use is_a?(class)

`"Hello".is_a?(String) # Output => true`

```
if "Hello".is_a?(String)
   p "That class is String"
else
   p "That class not String" 
end
# Output => "That class is String"
```
