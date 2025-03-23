class Movie
  attr_reader :rank, :snacks_eaten
  attr_accessor :title

  def initialize(title, rank = 5)
    @title = title.capitalize
    @rank = rank
    @snacks_eaten = Hash.new(0)
  end

  def add_snack(name, price)
    @snacks_eaten[name] += price
  end

  def to_s
    "#{@title} has a rank of #{@rank}"
  end

  def thumbs_up
    @rank += 1
  end

  def thumbs_down
    @rank -= 1
  end

  def total_snack_price
    @snacks_eaten.values.sum
  end
end

if __FILE__ == $0
  movie = Movie.new("starwars", 10)
  puts movie
end

#the class has now its own file. and is passed through using require_relative"relative path"
#same with movie and movie.rb file
#
#running an example code using an if statment
#
#if __FILE__  is the current file
#== $0
#
