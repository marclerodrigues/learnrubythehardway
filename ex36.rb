require './ex36-player'

def lion_room player
  lion = Player.new "Lion"
  lion.wealth = 1500

  puts "-" * 50
  puts "Welcome to the Lion Room!"
  puts "The Lion is hungry you can choose a weapon to figth him."
  puts "The Lion will figths back!"
  puts "Pick wisely."
  puts "1 - Spear / 2 - Sword / 3 - Pistol"
  weapon = $stdin.gets.chomp

  if weapon == "1"
    puts "You injured the lion, but he still can kill you!"
    player.dead("You're eaten!")
  elsif weapon == "2"
    puts "Like a ninja, you cut the head of the lion! Congrats!"
    player.damage += 25
    player.wealth += lion.wealth
    puts "You earned +25 of experience! And also the lions gold: $#{lion.wealth}"
    anaconda_room player
  elsif weapon == "3"
    puts "You're not fast enough."
    player.dead("You were eaten!")
  else
    "Choose a weapon!"
  end
end

def dragon_room player
  dragon = Player.new "Dragon"
  dragon.wealth = 150000
  puts "-" * 50
  puts "Welcome to the Dragon chamber!"
  puts "You need to be very smart and silent to don't wake up the Dragon."
  puts "You can try pass through the Dragon to freedom without waking him up."
  puts "Remember, I said try!"
  puts "Or you can put your effort in order to kill the Dragon and take the Castle and its fortune for yoursel."
  puts "Would like to try pass or use one weapon on your arsenal to kill the Dragon?"
  puts "Your arsenal is full with the weapons and itens you took before."
  puts "If you want to fight type in the name of the weapon."
  choice = $stdin.gets.chomp

  if choice.include?("pas") or choice.include?("PAS")
    puts "You're waking silently, but wait!"
    puts "Look! The Dragon it's just pretending!"
    puts "He its your arms, then your legs and slowly tear you a part!"
    player.dead("You get yourself killed!")
  elsif choice.include?("sw") or choice.include?("Sw") or choice.include?("SW")
    puts "You pickup your Sword but the dragon is faster!"
    player.dead("Nice lunch for the dragon!")
  elsif choice.include?("ax") or choice.include?("Ax") or choice.include?("AX")
    puts "You axe does not helps your!"
    player.dead("Are you crazy? Using an axe...")
  elsif choice.include?("too") or choice.include?("Too") or choice.include?("TOO")
    puts "The Dragon jumps over you but wait!"
    puts "He stops moving!"
    puts "You hit his heart!"
    puts "Now you have all the Gold and The Castle for yourself."
    player.wealth += dragon.wealth
    player.damage += 95
    puts "Well done, #{player.name}."
    puts "Your have now: $#{player.wealth}"
    puts "Your experience: #{player.damage}"
    puts "Nice work!"
    puts "You're the king of Impossible Land now!"
  else
    player.dead("The dragon eats you!")
  end
end

def anaconda_room player
  anaconda = Player.new "Anaconda"
  anaconda.wealth = 2500
  puts "-" * 50
  puts "Welcome to the Anaconda Room"
  puts "Behind one of this doors there is a Anaconda, choose well."
  puts "Pick 1 or 2:"
  choice = $stdin.gets.chomp

  if choice == "1"
    puts "You fell in a endless pit!"
    player.dead("I told you!")
  elsif choice == "2"
    puts "You are in Anaconda's chamber... Choose a weapon."
    puts "Remember, in order to succeed in the next and last chamber you're need to get Anacondas tooth."
    puts "1 - Bomb / 2 - Sword / 3 - Axe"
    choice = $stdin.gets.chomp

    if choice == "1"
      puts "You blow up everything!"
      player.dead("Including yourself.")
    elsif choice == "2"
      puts "You kill the Anaconda but you're not able to take the tooth."
      player.dead("Without you cannot pass!")
    elsif choice == "3"
      puts "You cut off Anaconda's head, eat its heart and take the tooth."
      puts "Well done, warrior!"
      puts "Inside the Anaconda you found more gold! Congrats!"
      puts "Total inside: $#{anaconda.wealth}"
      player.wealth += anaconda.wealth
      player.damage += 45
      dragon_room player
    else
    end
  else
  end
end

def start
  puts "Welcome, to the Impossible Land!"
  puts "Be very careful which door you're choosing."
  puts "If you stay alive you may be very wealthy at the end."
  puts "-".*50
  puts "What's your name?"
  name = $stdin.gets.chomp
  player = Player.new name
  puts "#{player.name}, are you ready? "
  choice = $stdin.gets.chomp

  if choice.include?("y") || choice.include?("Y")
    lion_room player
  else
    exit(0)
  end

end

start
