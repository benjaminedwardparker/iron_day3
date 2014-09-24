places = ["Santa Monica",
          "Nevada City",
          "San Sebastian",
          "San Francisco",
          "Arcata",
          "Portland",
          "Houston"
          ]

sarray = []

places.each do |x|
  if x.chars.first == "S"
    puts "#{x} sucks."
    sarray << x
  end
  # if x.chars.count >= 10
  #   puts "#{x} is a terrible place to live"
  # else
  #   puts "#{x} is Fantastic!"
  # end

  # if x.include?(" ")
  #   puts "#{x} has a space"
  # else
  #   puts "#{x} is just one word"
  # end
end

puts "#{sarray.count} places suck."
