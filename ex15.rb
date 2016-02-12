# Set the file name by the argument passed
filename = ARGV.first
# Define txt as the file with the filename passed
txt = open(filename)
# Show the file name and a string
puts "Here's your file #{filename}: "
# Read the content of txt
print txt.read
# Show some string
print "Type the filename again: "
# Define the name of the file
file_again = $stdin.gets.chomp
# Define the another file
txt_again = open(file_again)
# Show the content of the other file
print txt_again.read
# Close the files
txt.close
txt_again.close
