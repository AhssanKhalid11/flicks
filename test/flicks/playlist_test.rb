require "minitest/autorun"
require_relative "../../lib/flicks/movie"
require_relative "../../lib/flicks/playlist"

class PlaylistTest < Minitest::Test
  def setup
    @playlist = Playlist.new("Gonzo")

    @movie_1 = Movie.new("A", 10)
    @movie_2 = Movie.new("B", 9)

    $stdout = StringIO.new
  end

  def test_playlist_has_no_movies
    assert_empty @playlist.movies
  end

  def test_add_movies
    @playlist.add_movie(@movie_1)
    @playlist.add_movie(@movie_2)

    refute_empty @playlist.movies
    assert_equal [@movie_1, @movie_2], @playlist.movies
  end

  def test_rolling_high_number_gives_thumbs_up_a
    @playlist.add_movie(@movie_1)

    @playlist.stub(:roll_die, 6) do
      @playlist.play()

      assert_equal 11, @movie_1.rank
    end
  end

  def test_rolling_high_number_gives_thumbs_up_b
    @playlist.add_movie(@movie_1)

    @playlist.stub(:roll_die, 5) do
      @playlist.play()

      assert_equal 11, @movie_1.rank
    end
  end

  def test_low_number_roll_gives_thumbs_down_a
    @playlist.add_movie(@movie_1)

    @playlist.stub(:roll_die, 1) do
      @playlist.play()

      assert_equal 9, @movie_1.rank
    end
  end

  def test_low_number_roll_gives_thumbs_down_b
    @playlist.add_movie(@movie_1)

    @playlist.stub(:roll_die, 2) do
      @playlist.play()

      assert_equal 9, @movie_1.rank
    end
  end
end

# def setup                               - setting up instance variables so we dont need to repeet code
#   @playlist = Playlist.new("Gonzo")     - initialized it with a @

#   @movie_1 = Movie.new("A", 10)         - initialized it with a @
#   @movie_2 = Movie.new("B", 9)
# end                                     - now we can re use the example in different tests without manually overiding it

#stub is a method from Minitest add to all objects to overide vales from another method
#@playlist.stub(:roll_die) - playlist.stub = applying a method to over ride
#                          - (:roll_die, 6) do = (arguments hash: method name, value required) in a do block

# def setup                - this will capture the output but wont print it out
#   $stdout = StringIO.new - standard output = StringIO.new instance of the string class
# end

#THINGS TO LOOK INTO!?

# minitest/autorun - the easy and explicit way to run all your tests.

# minitest/unit - a very fast, simple, and clean test system.

# minitest/spec - a very fast, simple, and clean spec system.

# minitest/mock - a simple and clean mock/stub system.

# minitest/benchmark - an awesome way to assert your algorithm's performance.

# minitest/pride - show your pride in testing!

# Incredibly small and fast runner, but no bells and whistles.
