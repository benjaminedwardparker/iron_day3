# Just like yesterday's homework
# This time as much as possible do not look back at previous examples.
# Be sure to use git to add your homework changes to your repo on github.
# BONUS + Highly recommened, use comments to describe what is happening with each step

# PART 1
# 1. Make an array of your classmate's names
# Part homework... part Ice Breaker... part review... #winning

classmates = ["Astrid",
              "Bharvi",
              "Dwight",
              "Kirt",
              "Thanh",
              "Adam",
              "Jared",
              "Jordan",
              "Kyle",
              "Efrain",
              "Kevin",
              "Benjamin"]
                          # Just creating an array...

# PART 2
# 1. Create an array of the words in sentence
# 2. Find how many words have a length equal to 4
sentence = "Ruby is way better than JavaScript."
words = []   #initialize variables
word = ""
sentence.chars.each do |c|   #loop through the characters in the sentence
  if c != " " && c != "."
    word << c    #add the char to the word unless we've reached a space or the end of the sentence
  else
    words << word  #if space or period is reached then the word is complete - add it to our array
    word = ""      #start a new word for the next trip through the loop
  end
end

p words
potential_bad_word_count = 0 #have to initialize this before we can add to it
words.each do |word|   #loop through array of words
  if word.length == 4
    potential_bad_word_count += 1 #add 1 to count ever time we find a word with 4 letters
  end
end
puts "There are #{potential_bad_word_count} potential bad words in this sentence"

movies = []
movies << {
  title: "Forest Gump",
  budget: 55,
  stars: ["Tom Hanks"]
}
movies << {
  title: "Star Wars",
  budget: 11,
  stars: ["Mark Hamill", "Harrison Ford"]
}
movies << {
  title: "Batman Begins",
  budget: 150,
  stars: ["Christian Bale", "Liam Neeson", "Michael Caine"]
}
movies << {
  title: "Titanic",
  budget: 200,
  stars: ["Kate Winslet", "Leonardo DiCaprio"]
}
movies << {
  title: "Inception",
  budget: 160,
  stars: ["Leonardo DiCaprio", "JGL"]
}
# PART 3
# 1. Create an array of movies with budgets less than 100
# 2. Create an array of movies that have Leonardo DiCaprio as a star

low_budget_movies = []   # initialize our arrays so that we can add to them
dicaprio_movies = []
movies.each do |movie|   # only need to loop through the array once!
  if movie[:budget] < 100  #if the movie's budget is less than 100, add the title of the movie to the array of low budget movies
    low_budget_movies << movie[:title]
  end
  if movie[:stars].include?("Leonardo DiCaprio")
    dicaprio_movies << movie[:title] #if the array of stars in the movie includes Leo, add the title to the array of Leo vehicles
  end
end
puts "Low budget movies:" #display the result of our loop
puts low_budget_movies
puts ""
puts "Di Caprio vehicles:"
puts dicaprio_movies
