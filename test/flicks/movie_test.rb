require "minitest/autorun"
require_relative "../../lib/flicks/movie"

class MovieTest < MiniTest::Test
  def test_has_a_capitlized_title
    movie = Movie.new("goonies", 10)

    assert_equal "Goonies", movie.title
  end

  def test_has_an_initial_rank
    movie = Movie.new("goonies", 10)

    assert_equal 10, movie.rank
  end

  def test_has_a_string_representation
    movie = Movie.new("goonies", 10)

    assert_equal "Goonies has a rank of 10", movie.to_s
  end

  def test_thumbs_up_increase_rank_by_1
    movie = Movie.new("goonies", 10)

    assert_equal 11, movie.thumbs_up
  end

  def test_thumbs_down_decrease_rank_by_1
    movie = Movie.new("goonies", 10)

    assert_equal 9, movie.thumbs_down
  end
end

#require "minitest/autorun" - will auto run the minitest gem
#reqire_relative "../../lib/flicks/movie" - will link the correct file
#
#class MovieTest < MiniTest::test - defines a class "MovieTest" < inherit from namespace called MiniTest (ruby gem)
#end                              - from a class called test
#
#create a name of the test_and_description (Test_movie_title_has_a_capitalized_name)
#then begin by initalizing the instance
#movie = Movie.new("goonies", 10)
#assert what you want the output to be and call the instance followed by method to produce output
#assert_equal "Goonies", movie.title
#end
