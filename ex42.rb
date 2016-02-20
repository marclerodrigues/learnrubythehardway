class Animal
  attr_accessor :name
  def initialize name
    @name = name
  end
end

class Dog < Animal
end

class Cat < Animal
end

class Person

  attr_accessor :pet, :name

  def initialize name
    @name = name
    @pet = nil
  end

end

class Employee < Person
  attr_accessor :salary
  def initialize name, salary
    super(name)
    @salary = salary
  end
end

class Fish
end

class Salmon < Fish
end

class Halibut < Fish
end

rover = Dog.new "Rover"
satan = Cat.new "Satan"
mary = Person.new "Mary"
mary.pet = satan
frank = Employee.new "Frank", 120000
frank.pet = rover
flipper = Fish.new
crouse = Salmon.new
harry = Halibut.new

puts rover.name
puts satan.name
puts mary.name
puts mary.pet.name
puts frank.name
puts frank.salary
puts frank.pet.name
puts flipper.class
puts crouse.class
puts harry.class