def emoji(emoji = "🤠", number)
  emoji * number
end

def movie_info(title, rank = 5)
  stars = emoji("⭐️", rank)
  "#{title.capitalize} has a rank of #{rank}: #{stars}"
end

puts movie_info("goonies", 10)
puts movie_info("ghostbusters", 9)

movie_title = "goldfinger"
movie_rank = 8
puts movie_info(movie_title)

#methods need prameters and must be defined
#there are two ways to use methods that we have made

#key word prameters 
#is when a way to make a method that makes you assign variable and value
#example 
#  def movie_info(title:, rank:)
#    stars = "⭐️"
#    "#{title.capitalize} has a rank of #{rank}: #{stars}"
#  end
#
#  puts movie_info(rank: 10, title: "grinch")