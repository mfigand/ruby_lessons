# class Person

#   def initialize(name: 'Nombre', age: '100', gender: 'X')
#     @name = name
#     @age = age
#     @gender = gender
#   end

#   def out_of_private
#     puts "name = #{name}"
#     inside_private
#   end

#   def out_of_private_other
#     puts "name = #{name}"
#     inside_private
#   end

#   private

#   attr_accessor :name, :age, :gender

#   def inside_private
#     puts "age = #{age}"
#   end

  
# end

# person_instance = Person.new(name: 'Foo', age: '20', gender: 'Y')
# person_instance.out_of_private
# [:out_of_private, :out_of_private_other, :inside_private].map do |method|
#   person_instance.public_send(method)
# end
# person_instance.inside_private
# person_instance.name = "Christine"
# person_instance.age = 52
# person_instance.gender = "female"

# puts person_instance.inspect

class Pet
  attr_accessor :name, :age, :gender, :color

  # def initialize(name, age, gender, color)
  # def initialize(**kwords)
  # @name = kwords[:name]

  def initialize(name:, age:, gender:, color:)
    @name = name
    @age = age
    @gender = gender
    @color = color
  end

  def speak(sound: nil)
    if sound
      puts sound
    else
      puts "#{self.name} can´t speak"
    end    
  end
  
end

class Dog < Pet  ##we use the '<' operator to show inheritance
  # attr_accessor :name, :age, :gender, :color
  def speak(sound: nil)
    puts "Woof!"
  end
end

class Cat < Pet  ##we use the '<' operator to show inheritance
  # attr_accessor :name, :age, :gender, :color
  def speak(sound:)
    super
    puts 'Miauu <- 2nd sound from child class'
  end
end

class Snake < Pet  ##we use the '<' operator to show inheritance
  # attr_accessor :name, :age, :gender, :color
  attr_reader :length

  def initialize(length: nil)
    @length = length
  end

  def self.class_method
    puts 'this is a class method'
    puts private_class_method
  end
  
  def instance_method
    puts 'this is a instance method'
    private_instance_method
    puts self.class.private_class_method
  end

  private

  def private_instance_method
    puts 'this is a private instance method'
  end
  
  def self.private_class_method
    puts 'this is a private class method'
  end
end

lassie = Dog.new(color: 'red', gender: 'X', age: '10', name: 'Lassie')
# puts lassie.inspect
puts lassie.speak(sound: "Woof")

simba = Cat.new(color: 'white', gender: 'Y', age: '4', name: 'Simba')
# puts simba.inspect
puts simba.speak(sound: 'Miauu')

sammy = Snake.new(length: '100')
sammy.name = 'Sammy'
sammy.color = 'green'
sammy.age = '8'
# puts sammy.inspect
puts sammy.speak

Snake.class_method
sammy.instance_method
