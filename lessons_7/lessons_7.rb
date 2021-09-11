#1
class Car

end

#2
car = Car.new

#3-4
p car.class

#5
class Person
#8
    # attr_reader :name
#11
    # attr_writer :last_name
#12
    attr_accessor :name,  :last_name
    def initialize(name,last_name)
        @name = name
        @last_name = last_name
    end
#6
    # def name
    #     @name
    # end
#8
    def greeting
        p "Hello, it is #{@name}"
    end
    
#10
    # def last_name=(v)
    #     @last_name = v
    # end

    def greeting_last 
        p "Hello, it is  #{@last_name}"
    end
end
#7
person_1 = Person.new("Tom",'Henk')
p person_1
p person_1.name

p "--------------------------------"
#8
person_2 = Person.new("Alex", 'Bouden')
p person_2
p person_2.name

p "--------------------------------"
#9
person_1.greeting
person_2.greeting

p "--------------------------------"
#10
person_1.greeting_last
person_1.last_name = 'Morison'
person_1.greeting_last

#13
class Test

    def Test.hello
        print "Hello"
    end


    class << self
    def world
        print " world."
    end

    def name
    print " And we)) \n"
    end
    end

end
Test.hello
Test.world
Test.name

#14-15
class Alf
    attr_accessor :cat, :boy, :alien
    def initialize(cat,boy,alien)
        @cat = cat
        @boy = boy
        @alien = alien
    end

    def sey_hi
        p "(I am in public method.) Hello cat #{@cat}"
    end

    def hello_off(film)
        film.hello
    end

    def greeting_off
        greeting
    end
    protected
    def hello
        p "(I am in protected method). Hello boy #{@boy}"
    end

    private
    def greeting
        p "(I am in private method). Hello alian #{@alien}"
    end

end
alf =Alf.new("lucky","Jimy","alf") 
alf.sey_hi

begin
alf.hello
rescue
p' will be mistake if use protected method'
end
alf.hello_off(alf)

alf.greeting_off

#16

class Greeter
    #19
    POVER  = "111111"
    def initialize(name)
        @name = name
    end
    def say_hello
        p "Hello(yoy are in Greeter class)"
    end
    def greet
        p "Hello #{@name}"
    end
end

#17
class RubyGreeter < Greeter
    
    #20
    POVER  = "bla bla"
    def initialize(age)
        @age = age
        super(@name)
    end

    def say_hello
#18
        p "Hello from Ruby"
    end

    def greet
        p "Hello #{@name} your age is #{@age}?"
    end
end
p "________________________________________"
#18
#ruby_greeter = RubyGreeter.new
# ruby_greeter.say_hello
p "________________________________________"
greeter = Greeter.new("Tom")
greeter.greet
ruby_greeter = RubyGreeter.new(36)
ruby_greeter.greet # не підтягується name із попереднього класу
#21
p RubyGreeter::POVER 
p Greeter::POVER 

# додаткове завдання

#1
class Point
    attr_reader :x, :y
  def initialize(x,y)
    @x = x
    @y = y
  end

  def to_s
    "(#{@x} #{@y})"
  end

  def +(any)
    Point.new(@x + any.x, @y + any.y )
  end

  def -(any)
    Point.new(@x - any.x, @y - any.y )
  end

  def *(any)
    Point.new(@x * any.x, @y * any.y )
  end

  def /(any)
    Point.new(@x / any.x, @y / any.y ) #  при заміні з Point в self виникає помилка
  end
end

point1 = Point.new(8, 10)
point2 = Point.new(5, 4)

p point1.to_s
p point2.to_s

p (point1 + point2).to_s
p (point1 - point2).to_s
p (point1 * point2).to_s
p (point1 / point2).to_s


#2

class Selection

    @@size_ini = 0

    def initialize(number)
        @number = number
        @@size_ini +=1
    end
    class <<self
    def size 
        p @@size_ini
    end
    end
end

selection_1 = Selection.new(1)
selection_2 = Selection.new(1)
selection_3 = Selection.new(1)
selection_4 = Selection.new(1)

Selection.size

