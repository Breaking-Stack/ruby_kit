# hash

- A hash is a data structure used to store data in the form of UNIQUE key-value pairs. Unlike arrays, there are no numerical indexes, you access the hash values with keys.

- Examples include:

A list of country names & their corresponding country codes (like ES ⇾ Spain)
A dictionary, where every word has a list of possible definitions
A domain name & it’s IP address
> Using a hash in your Ruby programs can speed up your code when used in the right situation.

- creating hash
```ruby
hash = {} # => {}
hash = Hash.new # => {}
hash = Hash[] # => {}
# with initial value
h = Hash[foo: 0, bar: 1, baz: 2]
h = {foo: 0, bar: 1, baz: 2}
```

- The simplest way to retrieve a Hash value (instance method []):
```ruby
h = {foo: 0, bar: 1, baz: 2}
h[:foo] # => 0
```

- The simplest way to create or update a Hash value (instance method []=):
```ruby
h = {foo: 0, bar: 1, baz: 2}
h[:bat] = 3 # => 3
h # => {:foo=>0, :bar=>1, :baz=>2, :bat=>3}
h[:foo] = 4 # => 4
h # => {:foo=>4, :bar=>1, :baz=>2, :bat=>3}
```
- The simplest way to delete a Hash entry (instance method delete):

```ruby
h = {foo: 0, bar: 1, baz: 2}
h.delete(:bar) # => 1
h # => {:foo=>0, :baz=>2}
```

### symbols
Usually in a hash we use Symbols as keys instead of String. This is because Symbol occupies far less amount of space compared to String. The difference in speed and space requirement may not be evident to you now, but if you are writing a program that creates thousands of hashes it may take a toll. So try to use Symbols instead of String.
```ruby
>> :x.class
=> Symbol
```

- Symbols can be converted to string using the to_s method. Look at the irb example below where we convert symbol to string.
```ruby
>> :orange.to_s
=> "orange"
# To convert a String to Symbol use .to_sym
>> "hello".to_sym
=> :hello
```

> will explain more in difference between string and Symbol in the next sections

- Default Values
  The methods [], values_at and dig need to return the value associated to a certain key. When that key is not found, that value will be determined by its default proc (if any) or else its default (initially ‘nil`).

You can retrieve the default value with method default:
```ruby
h = Hash.new
h.default # => nil
```
You can set the default value by passing an argument to method Hash.new or with method default=
```ruby
h = Hash.new(-1)
h.default # => -1
h.default = 0
h.default # => 0
```

- This default value is returned for [], values_at and dig when a key is not found:
```ruby
counts = {foo: 42}
counts.default # => nil (default)
counts[:foo] = 42
counts[:bar] # => nil
counts.default = 0
counts[:bar] # => 0
counts.values_at(:foo, :bar, :baz) # => [42, 0, 0]
counts.dig(:bar) # => 0
```
> values_at get multiple value by keys

- fetch To raise an error for key doesn't exist in hash
```ruby
h = {foo: 0, bar: 1, baz: 2}
h.fetch(:x) #=> (irb):30:in `fetch': key not found: :x (KeyError)

# If key is not found and no block was given, returns default_value:
{}.fetch(:nosuch, :default) # => :default
```

- has_key?
```ruby
Methods has_key?, key?, and member? are aliases for #include?.
```

- has_value?(value) → true or false
```ruby
Method value? is an alias for #has_value?.
```

- key(value) → key or nil
  - Returns the key for the first-found entry with the given value (see Entry Order):
    ```ruby
        h = {foo: 0, bar: 2, baz: 2}
        h.key(0) # => :foo
        h.key(2) # => :bar
    ```
  - Returns nil if so such value is found.

- keys
  - Returns a new Array containing all key
    ```ruby
        h = {foo: 0, bar: 1, baz: 2}
        h.keys # => [:foo, :bar, :baz]
    ```
- Returns the count of entries
```ruby
{foo: 0, bar: 1, baz: 2}.length # => 3
{foo: 0, bar: 1, baz: 2}.size # => 3

```