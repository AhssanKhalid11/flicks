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

class Playlist
  attr_reader :name, :movies

  def initialize(name)
    @name = name.capitalize
    @movies = []
  end

  def add_movie(movie)
    @movies << movie
  end

  def roll_die
    rand(1..6)
  end

  def play
    puts "*" * 15
    puts"#{name}'s playlist"

    puts "\nBefore watching:"
    puts @movies 

    @movies.each do |movie|
      number_rolled = rand(1..6)

    case number_rolled = roll_die
      when 1..2 
        movie.thumbs_down
        puts "#{movie.title} got a thumbs down 👎"
      when 3..4
        puts "#{movie.title} got skipped 🤨"
      else
        movie.thumbs_up
        puts "#{movie.title} got a thumbs up 👍"
      end
    end

    puts "\nAfter watching:"
    puts @movies
  end
end


movie_1 = Movie.new("goonies", 10)
movie_2 = Movie.new("ghostbusters", 9)
movie_3 = Movie.new("goldfinger")

movies = [movie_1, movie_2, movie_3]

playlist_1 = Playlist.new("kermit")
playlist_1.add_movie(movie_1)
playlist_1.add_movie(movie_2)
playlist_1.add_movie(movie_3)
playlist_1.play

playlist_2 = Playlist.new("fozzie")
playlist_2.add_movie(movie_3)

movie_4 = Movie.new("gremlins", 7)

playlist_2.add_movie(movie_4)
playlist_2.play



# if number_rolled < 3

#   movie_1.thumbs_down
#   puts "#{movie_1.title} got a thumbs down 👎"

# elsif number_rolled < 5
#   puts "#{movie_1.title} got skipped 🤨"

# else
#   movie_1.thumbs_up
#   puts "#{movie_1.title} got a thumbs up 👍"

# end

