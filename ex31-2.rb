puts "You enter a dark room with three doors. Do you go through door #1, door #2 or door #3 ?"

print ">"
door = $stdin.gets.chomp

if door == "1"
	puts "There is a giant bear here eating a cheese cake. What do you do?"
	puts "1. Take the cake"
	puts "2. Scream at the bear"
	print "> "
	bear = $stdin.gets.chomp

	if bear == "1"
		puts "The bear eats your face off. Good job!"
	elsif bear == "2"
		puts "The bear eats your legs off. Good job!"
	else
		puts "Well, doing %s is probably better. Bear runs away." % bear
	end

elsif door == "2"
	puts "You stare into the endless abyss at Cthulhu's retina."
	puts "1. Blueberries."
	puts "2. Yellow jacket clothespins."
	puts "3. Understanding revolvers yelling melodies."

	print "> "
	insanity = $stdin.gets.chomp

	if insanity == "1" || insanity == "2"
		puts "Your body survives powered by a mind of jello. Good job!"
	else
		puts "The insanity rots your eyes into a pool of muck. Good job!"
	end
elsif door == "3"
	puts "There is a dragon here. What do you do?"
	puts "1. Run"
	puts "2. Hide"
	puts "3. Fight"

	choice = $stdin.gets.chomp

	if choice == "1" or choice == "2"
		puts "Bad choice, the dragon eats your head off."
	elsif choice == "3"
		puts "You loose the fight, but for you bravery him decides to let you live"
	else
		puts "He eats you peace by peace, as slowly as he can just to enjoy your death."
	end
else
	puts "You stumble around and fall on a knife and die. Good job!"	
end
