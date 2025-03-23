require_relative "lib/flicks/movie"
require_relative "lib/flicks/playlist"

movie_1 = Movie.new("goonies", 10)
movie_2 = Movie.new("ghostbusters", 9)
movie_3 = Movie.new("goldfinger")

movies = [movie_1, movie_2, movie_3]

playlist_1 = Playlist.new("kermit")
playlist_1.add_movie(movie_1)
playlist_1.add_movie(movie_2)
playlist_1.add_movie(movie_3)
playlist_1.play(20)
playlist_1.print_stats

playlist_2 = Playlist.new("fozzie")
playlist_2.add_movie(movie_3)

movie_4 = Movie.new("gremlins", 7)

playlist_2.add_movie(movie_4)
playlist_2.play(2)
playlist_2.print_stats

puts "\n"
puts movies

# if number_rolled < 3

#   movie_1.thumbs_down
#   puts "#{movie_1.title} got a thumbs down 👎"

# elsif number_rolled < 5
#   puts "#{movie_1.title} got skipped 🤨"

# else
#   movie_1.thumbs_up
#   puts "#{movie_1.title} got a thumbs up 👍"

# end
