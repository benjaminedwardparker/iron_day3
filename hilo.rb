numbers = [3,10,2,8,100,13,33,52,20]

# Say 'HIGH!' if number is higher than 20
# Say 'low' if number is lower than 20
puts numbers.inspect

numbers.each do |number|
  if number > 20
    puts "#{number} is HIGH!"
  else
    if number < 20
      puts "#{number} is low"
    else
      puts "Number is 20"
    end
  end
end
