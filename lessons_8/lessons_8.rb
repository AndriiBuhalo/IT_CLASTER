#1
def lessons_upper
end

def lessons_downer
end

#2
module Lessons
COLOR = "Red Hat"
    def self.upper
        "upper"
    end
    
    def self.downer
        "downer"
    end
end
#3
p Lessons.downer
p Lessons.upper

#4
p Lessons::COLOR

#5
module Animals

    def self.sound
        p "Ha - ha"
    end

    class Cat
        def sound
          p " Miav"
        end
    end

    class Dog
        def sound
          p " Gav"
        end
    end

end

Animals::sound
cat = Animals::Cat.new
dog = Animals::Dog.new
cat.sound
dog.sound

#6
module Sirko
    def leg
        "Сірко мав #{@one} лап і #{@two} вуха "
    end
end

class SirkoMain
    include Sirko

    def initialize(one, two)
        @one = one
        @two = two
    end

end
sirko = SirkoMain.new(3,2)
p sirko.leg

#7
module Babay
    def hello
        "hello..."
    end
end

class Girl
    extend Babay
end
p Girl.hello 

#8
module Bromko
    def leg
        "Бромко мав #{@one} лап і #{@two} вуха "
    end
end

class BromkoMain
    #include Bromko
    #9
    prepend Bromko
    

    def initialize(one, two)
        @one = one
        @two = two
    end
    def leg
        "Бромко зламав ногу... "
    end
end
sirko = BromkoMain.new(3,2)
p sirko.leg
p BromkoMain.ancestors

#10

module Testing
    def self.test
        p "hello world"
    end

    def test2
        p "and we.."
    end
    module_function :test2
end
Testing.test
Testing.test2

#11

class Mixing
    prepend Testing
    def greating
        Testing.test2
    end

    
end

Testing.test 
mix = Mixing.new
mix.greating

