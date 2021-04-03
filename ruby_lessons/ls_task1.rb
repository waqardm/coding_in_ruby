module Towable
  def can_tow?(pounds)
    pounds < 2000 ? true : false
  end
end

class Vehicle
  attr_accessor :color
  attr_reader :year
  @@number_of_vehicles = 0

  def initialize(year, color, model)
    @year = year
    @color = color
    @model = model
    current_speed = 0
    @@number_of_vehicles += 1
    puts "#{year}, #{color}, #{model}"
  end

  def age
    "Your #{@model} is #{years_old} years old."
  end

  def self.gas_mileage(miles_driven, gallons_used)
    puts "Your car usage is #{miles_driven / gallons_used}"
  end

  def self.number_of_vehicles
    puts "Current number of vehicles = #{@@number_of_vehicles}"
  end

  def speed_up(number)
    @current_speed =+ number
  end

  def brake(number)
    @current_speed -= number
    puts "You're slowing down"
  end

  def shut_down()
    @current_speed = 0
    puts "Shutting down."
  end

  def current_speed()
    puts "Your current speed is #{@current_speed}"
  end

  def spray_paint(color)
    self.color = color
    puts "You're new shade of #{color} looks great!"
  end

  private
  def years_old
    Time.now.year - self.year
  end
end

class MyCar < Vehicle
  NO_OF_DOORS = 4
  def to_s
    "My car is a #{year} #{@model} in #{color}"
  end
end

class MyTruck < Vehicle
  NO_OF_DOORS = 2
  def to_s
    "My truck is a #{year} #{@model} in #{color}"
  end
end

# car = MyCar.new(2012, "red", "corolla")
# car.speed_up(10)
# car.current_speed
# car.brake(5)
# car.current_speed
# car.shut_down
# car.current_speed
# car.color = "blue"
# puts car.color
# puts car.year
# car.spray_paint("pink")
# MyCar.gas_mileage(300,15)
# puts car
# truck = MyTruck.new(2019, "white", "Man")
# puts truck.age
# puts Vehicle.ancestors
# puts "-----------------"
# puts MyCar.ancestors
# puts "-----------------"
# puts MyTruck.ancestors

class Student
  def initialize(name, grade)
    @name = name
    @grade = grade
  end

  def better_grade_than?(other_student)
    grade > other_student.grade
  end

  protected

  def grade
    @grade
  end
end

joe = Student.new("Joe", 90)
bob = Student.new("Bob", 84)
puts "Well done!" if joe.better_grade_than?(bob)

# 11. Create a class 'Student' with attributes name and grade. Do NOT make the grade getter public, so joe.grade will raise an error. Create a better_grade_than? method, that you can call like so...
# puts "Well done!" if joe.better_grade_than?(bob)

# 10. Write a method called age that calls a private method to calculate the age of the vehicle. Make sure the private method is not available from outside of the class. You'll need to use Ruby's built-in Time class to help.

# 9. Move all of the methods from the MyCar class that also pertain to the MyTruck class into the Vehicle class. Make sure that all of your previous method calls are working when you are finished.

# 8. Print to the screen your method lookup for the classes that you have created.

# 7. Create a module that you can mix in to ONE of your subclasses that describes a behavior unique to that subclass.

# 6. Add a class variable to your superclass that can keep track of the number of objects created that inherit from the superclass. Create a method to print out the value of this class variable as well.

# 5. Create a superclass called Vehicle for your MyCar class to inherit from and move the behavior that isn't specific to the MyCar class to the superclass. Create a constant in your MyCar class that stores information about the vehicle that makes it different from other types of Vehicles.

# 4. Add a class method to your MyCar class that calculates the gas mileage of any car.

# 3. You want to create a nice interface that allows you to accurately describe the action you want your program to perform. Create a method called spray_paint that can be called on an object and will modify the color of the car.

# 2. Add an accessor method to your MyCar class to change and view the color of your car. Then add an accessor method that allows you to view, but not modify, the year of your car.

# 1. Create a class called MyCar. When you initialize a new instance or object of the class, allow the user to define some instance variables that tell us the year, color, and model of the car. Create an instance variable that is set to 0 during instantiation of the object to track the current speed of the car as well. Create instance methods that allow the car to speed up, brake, and shut the car off.