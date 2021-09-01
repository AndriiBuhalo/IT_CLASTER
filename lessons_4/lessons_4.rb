p a =4+5

p 2+2*2
p (2+2)*2

p 64**0.5

p 8 + 10
p 10 - 2
p 5 / 2.0
p 3*7

p 7 > 2
p 5 >= 10
p 2 < 8
p 10 <= 2

p 3 <=> 4
p 4 <=> 4
p 5 <=> 4

p 1 == 1
p 1 === 1

p 1 == 1.0
p 1 === 1.0
p 1.class == 1.0.class

p 1.eql?(1.0)
p 1.eql?(1)

p 1.equal?(1.0)

p %q(hello) == 'hello'
p %q(hello) === 'hello'

p %q(hello).equal?('hello')
p 'hello'.equal?('hello')
p 'hello'.eql?('hello')

p (1..100) === 55
p (1..100).include?(55)

p 5 === Numeric
p 'test'=== String

p true && true
p true && false
p false && true

a = nil
b =false
c = 5

p !a && !b && c

p true || true
p true || false
p false || true

p 8 >5 ? 'Ruby' : 'Railse'
p 3 > 5 ? 'Ruby' : 'Railse'

a = 10 # or a.gets.chomp.to_i # or a = rand(20)
if a == 10
    p 'a equals 10'
else
    p 'a not equal 10' 
end


a =rand(20)
#if (0..10).include?(a)
if (1..10).include?(a)
    p "a equals between  0 ..10, a = #{a}"
else
    p "a is more then 10, a = #{a}"
end


x = rand(360)

if (0..90).include?(x)
    p " x is between 0 and 90 x = #{x}"
elsif (90..180).include?(x)
    p " x is between 90 and 180 x = #{x}"
elsif (180..270).include?(x)
    p " x is between 180 and 270 x = #{x}"
else
    p " x is between 270 and 360 x= #{x}"
end

case x
when (0..90)
    p " x is between 0 and 90 x = #{x}"
when (90..180)
    p " x is between 90 and 180 x = #{x}"
when (180..270)
    p " x is between 180 and 270 x = #{x}"
else
    p " x is between 180 and 360 x= #{x}"
end