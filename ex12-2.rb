print "Enter your money: "
money = gets.chomp.to_f
percentage = (money*0.1).round(2)
puts "10% = #{percentage}"
