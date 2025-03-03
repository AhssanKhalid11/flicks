module Snackbar
  Snack = Data.define(:name, :price)

  SNACKS = [
    Snack.new("popcorn", 3),
    Snack.new("candy", 1),
    Snack.new("nachos", 4),
    Snack.new("pretzels", 2),
  ]

  def self.random_snack #a method that can be used to refer in a different file + self = Snackbar module
    Snackbar::SNACKS.sample           #Snackbar gets namespace from SNACKS array with a method called smaple
  end
end

#data vales can be grouped in modules they are written like classes.
#you can write a method into a module and will self to refer to it and need an end

#when code is on another file makesure update the namespace
# Snackbar::SNACKS
