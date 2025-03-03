class Playlist
  Snack = Data.define(:name, :price)

  SNACKS = [
    Snack.new("popcorn", 3),
    Snack.new("candy", 1),
    Snack.new("nachos", 4),
    Snack.new("pretzels", 2),
  ]

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

  def play(viewings = 3)
    puts "*" * 15
    puts "#{name}'s playlist"

    puts "\nThe snackbar has:"
    SNACKS.each do |snack|
      puts "#{snack.name} for $#{snack.price}"
    end

    puts "\nBefore watching:"
    puts @movies

    1.upto(viewings) do |viewing_number|
      puts "\nViewing #{viewing_number}"

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

        snack = SNACKS.sample
        puts "during #{movie.title}, #{@name} ate #{snack.name} for $#{snack.price}."
      end
    end

    puts "\nAfter watching:"
    puts @movies
  end
end
