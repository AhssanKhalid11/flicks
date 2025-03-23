require_relative "/Users/ace/code/ruby_all/flicks/lib/flicks/movie"

movie_1 = Movie.new("goonies", 10)
movie_2 = Movie.new("ghostbusters", 9)
movie_3 = Movie.new("goldfinger")

movies = [movie_1, movie_2, movie_3]

hits, flops = movies.partition { |movie| movie.rank >= 7 }

p hits

puts "\n"

p flops

titles = []
movies.each { |movie| titles << movie.title }

puts "### newline \n"
p titles

titles = movies.map { |movie| movie.title.length }

puts "$$$ newline \n"

p titles

sorted = movies.sort_by { |movie| movie.rank }.reverse
puts "%%% newline \n"
puts "\n"
p sorted

snacks_eaten = {
  "nachos" => 28,
  "popcorn" => 18,
}

p snacks_eaten.values.sum

# movie_1 = Movie.new("goonies", 10)
# movie_2 = Movie.new("ghostbusters", 9)
# movie_3 = Movie.new("godlfinger")

# movies = [movie_1, movie_2, movie_3]

# #######################################

# hits = []
# movies.each do |movie|
#   if movie.rank >= 7
#     hits << movie
#   end
# end

# # hits = movies.select { |movie| movie.rank >= 7 }
# # p hits
# # puts hits
# # puts "\n"

# # ######################################

# # movies.each do |movie|
# #   if movie.rank >= 7
# #     flops << movie
# #   end
# # end

# # flops = movies.reject { |movie| movie.rank >= 7 }
# # puts flops
# # p flops

# # ######################################

# # hits, flops = movies.partition { |movie| movie.rank >= 7 }
# # puts hits
# # puts flops
# # puts "\n"
# # p hits
# # p flops

# class Person
#   attr_accessor :fname, :sname, :age

#   def initialize(fname, sname, age)
#     @fname = fname.capitalize
#     @sname = sname.capitalize
#     @age = age
#   end

#   def to_s
#     "my name is #{@fname} and my sir name is #{@sname} and my age is #{@age}"
#   end
# end

# person_a = Person.new("ahssan", "khalid", 10)
# person_b = Person.new("ace", "135", 18)
# person_c = Person.new("ihsaan", "shaikh", 25)

# people = [person_a, person_b, person_c]

# adults = []
# children = []
# people.each do |p|
#   if p.age >= 18
#     adults << p
#   end
# end

# # puts adults

# people.each do |p|
#   if p.age <= 17
#     children << p
#   end
# end
# puts "this is the array people"
# puts people
# puts "\n"
# puts "this is the array children"
# puts children
# puts "\n"
# puts "this is the array adults"
# puts adults

# # movies.each do |movie|
# #   if movie.rank >= 7
# #     flops << movie
# #   end
# # end
