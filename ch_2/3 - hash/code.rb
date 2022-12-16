hash = {} # => {}
hash = Hash.new # => {}
hash = Hash[] # => {}
# with initial value
h = Hash[foo: 0, bar: 1, baz: 2]
h = {foo: 0, bar: 1, baz: 2}
h[:foo] # => 0

h = {foo: 0, bar: 1, baz: 2}
h[:bat] = 3 # => 3
h # => {:foo=>0, :bar=>1, :baz=>2, :bat=>3}
h[:foo] = 4 # => 4
h # => {:foo=>4, :bar=>1, :baz=>2, :bat=>3}
# irb(main):053:0> x
# => {:name=>"Haider 2"}
# irb(main):054:0> x.keys[0]
# => :name
# irb(main):055:0> x.keys[0].object_id
# => 71068
# irb(main):056:0> s = { name: "n" }
# => {:name=>"n"}
# irb(main):057:0> s.keys[0]
# => :name
# irb(main):058:0> s.keys[0].object_id
# => 71068
# irb(main):059:0> s['j'] = "d"
# => "d"
# irb(main):060:0> s['j'].object_id
# => 14340
# irb(main):061:0> x['j'] = ""
# => ""
# irb(main):062:0> x['j'].object_id
# => 14360
# irb(main):063:0>



h = {foo: 0, bar: 1, baz: 2}
h.delete(:bar) # => 1
h # => {:foo=>0, :baz=>2}

# >> :x.class
# => Symbol

# >> :orange.to_s
# => "orange"
# # To convert a String to Symbol use .to_sym
# >> "hello".to_sym
# => :hello


# h = Hash.new
# h.default # => nil

h = Hash.new(-1)
h.default # => -1
h.default = 0
h.default # => 0


counts = {foo: 42}
counts.default # => nil (default)
counts[:foo] = 42
counts[:bar] # => nil
counts.default = 0
counts[:bar] # => 0
counts.values_at(:foo, :bar, :baz) # => [42, 0, 0]
counts.dig(:bar) # =>


h = {foo: 0, bar: 1, baz: 2}
h.fetch(:x) #=> (irb):30:in `fetch': key not found: :x (KeyError)

# If key is not found and no block was given, returns default_value:
{}.fetch(:nosuch, :default) # => :default

h = {foo: 0, bar: 2, baz: 2}
h.key(0) # => :foo
h.key(2) # => :bar

h = {foo: 0, bar: 1, baz: 2}
h.keys # => [:foo, :bar, :baz]

# or can use
h.values # => [0, 1, 2]

{foo: 0, bar: 1, baz: 2}.length # => 3
{foo: 0, bar: 1, baz: 2}.size # => 3