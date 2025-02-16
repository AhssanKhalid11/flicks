class Movie 
    attr_reader :rank
    attr_accessor :title

    def initialize(title, rank = 5)
        @title = title.capitalize 
        @rank = rank 
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
end

movie_1 = Movie.new("the matrix")

number_rolled = rand(1..6)

#in case conditions REMEMBER to change the when 

case number_rolled
when 1..2 
  movie_1.thumbs_down
  puts "#{movie_1.title} got a thumbs down 👎"
when 3..4
  puts "#{movie_1.title} got skipped 🤨"
else
  movie_1.thumbs_up
  puts "#{movie_1.title} got a thumbs up 👍"
end

# if number_rolled < 3

#   movie_1.thumbs_down
#   puts "#{movie_1.title} got a thumbs down 👎"

# elsif number_rolled < 5
#   puts "#{movie_1.title} got skipped 🤨"

# else
#   movie_1.thumbs_up
#   puts "#{movie_1.title} got a thumbs up 👍"

# end

# movie_1 = Movie.new("goonies", 10)
# puts movie_1.title
# movie_1.title = "goonys"
# puts movie_1.title
# puts movie_1.rank

# puts movie_1.to_s

# movie_2 = Movie.new("ghostbusters", 9)
# puts movie_2.to_s

# movie_3 = Movie.new("goldfinger")
# puts movie_3.to_s

# movie_1.thumbs_up
# puts movie_1.to_s
# movie_2.thumbs_down
# puts movie_2.to_s