name, age= ARGV

print "Enter you weekly salary: $ "
salary = STDIN.gets.chomp
per_year = (salary.to_f*52).round(2)

puts " #{name}, you're making $#{per_year} per year."
