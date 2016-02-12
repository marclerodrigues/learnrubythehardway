file_name = ARGV.first

puts "We're going to erase #{file_name}"
puts "If you don't what that, hit CTRL-C."
puts "If you do want that, hit RETURN."

$stdin.gets

puts "Opening the file..."
target = open(file_name, 'w')

puts "Truncatin the file. Goodbye !"
target.truncate(0)

puts "Now I'm going to ask you for three lines."
print "Line 1: "
line1 = $stdin.gets.chomp
print "Line 2: "
line2 = $stdin.gets.chomp
print "Line 3: "
line3 = $stdin.gets.chomp

puts "I'm going to write these to the file."

target.write(line1)
target.write("\n")
target.write(line2)
target.write("\n")
target.write(line3)
target.write("\n")

puts "And finally, we close it."
target.close
