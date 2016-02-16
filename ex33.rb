# Usage:
# ruby ex33.rb number increment

number, increment = ARGV

def log_while (number, increment)
  numbers = []
  i = 0
  while i < number.to_i
    puts "At the top i is #{i}"
    numbers.push(i)
    i += increment.to_i
    puts "At the bottom i is #{i}"
  end
  puts "The numbers are: ", numbers
end

log_while number, increment
