#immutable snacks
Snack = Data.define(:name, :price)

snacks = [
  Snack.new("popcorn", 3),
  Snack.new("candy", 1),
  Snack.new("nachos", 4),
  Snack.new("pretzels", 3),
]

#or

Snack = Data.define(:name, :price)

SNACKS [
  Snack.new("popcorn", 3),
  Snack.new("candy", 1),
  Snack.new("nachos", 4),
  Snack.new("pretzels", 2),
]

#to make constants capitalize the first letter of snack
#but contants that are not class names its typical to use all caps SKACKS

# Snack = Struct.new(:name, :price)  #this is how to create a struch must use cap names and prams in hashes

# Snack.new("popcorn", 3)            #this is how to create
# Snack.new("candy", 1)              #they by defualt has attr_accessor on
# Snack.new("nachos", 4)
# s = Snack.new("pretzels", 2)      #they can be assined to a variable

# puts s                            #how to call a struct
# puts s.name                       #these hashes can be called to return a value
# puts s.price
# puts "#{s.name} + #{s.price}"
# puts s.object_id                  #this is infact the same object
# puts "\n"
# s.name = "cookie"
# s.price = 5
# puts s
# puts s.name
# puts s.price
# puts "#{s.name} + #{s.price}"
# puts s.object_id
