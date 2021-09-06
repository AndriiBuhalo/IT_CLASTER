x = 10
while x>=0 do 
    p "#{x}"
    x -=1

end
p "----------"

a = 10
while a>=0 do 
    p "#{a}"
    a -=2

end
p "----------"

b = 10
while b>=0 do 
    p "#{b}"
    b -=5

end
p "----------"

c = 1
until c>20 do 
    p "#{c}"
    c +=1

end
p "----------"

a = [1,2,3,4,5]
while a.empty? == false do
    p a
    a.pop
  end
p a
p "----------"

x = 0
if x<= 0 
    p "#{x}"
    x +=1
end

x = 10
begin while x>=10 do
    p "#{x}"
    x -=1
end
end
p "----------"

b = [1,2,3,4,'5','false']
for element in b do 
   p "#{element}" 
end
p "----------"

b = { s: 1, a: 3, :c => "3"}
for key, value in b do
    p "The key is #{key}, the value is #{value}"
end

b.each {|k,v| print %Q-keys:#{k}- + %Q-value #{v}-}

50.times{|x| p x if x<=20 ||x>=22 && x<= 34 || x>=36}
50.times do |x| 
  print x==21|| x==35 ? "" : " #{x},"
end

p "----------"

array = [1,2,3,4]
p array.map{|x|  x**3}
p array.collect{|x|  x**3}
p array.map!{|x|  x**3}
p array

p "-----------"
array_new =*(1..50)
array1= (1..50).to_a
p array_new.first
p array1.last

2.upto(7){ |x| print " #{x}."}
puts

p "-----------"
6.downto(-3){ |x| print " #{x}."}
puts
p "-----------"
-10.step(10,2){|x| print " #{x}."}
puts
p "-----------"
1.upto(15){ |x| print " #{x}."}
puts
p "-----------"
16.times do|x|
    print " #{x}." if x>0
end
puts"-----------"

 p (1..50).reduce(:+)

 begin
    p a = (1..50).reduce()
  rescue => ex
    p ex.message
    p "Something wrong"
  end

  # додаткове завдання)

x =0
while x<=100
    p x
    x+=7
end
p "-----------"

y =1

while y<=600 do
    puts y
    y = (y*2)
end

# табличка множення
b= 1
 while b<=10 do
      
    print "2 * #{b} = "
    print  2* b
     puts 
     b+=1
 end

# фібоначі
p "------------"
def fib(n)
    if n ==0
        0
    elsif n<3
        1
    else
        fib(n-1)+fib(n-2)
    end
end
 (0..10).each {|n| print " #{fib(n)}."} 

puts
puts "------------"

a = (1..30).to_a
p a.first
p a.last 
p a[0]
p a[-1]
p a[-a.size]
p a[a.size-1]
#p a.min
#p a.max

puts "------------"

def text
    yield "ruby"
    
end
 p text{|n| n}

 puts "------------"

 def new_1
    yield "ruby" if block_given?
    yield "ruby" if block_given?
    yield "ruby" if block_given?
    yield "ruby" if block_given?
    yield "ruby" if block_given?

end
new_1{|x| p x}
new_1

puts "------------"

def factorial(number)
    if number == 0
        return 0
    end
    x = 1
    a = []
    while x <=number do 
        a << x
        x+=1
    end
    a.reduce(:*)
end
a = 5 
 p "factorial #{a}! =" +" " + factorial(a).to_s

 puts "------------"

 def dont_zero(number)
    x =9
    begin
        a = 100/ number
    rescue
        p "is zerro here("
        
    else
        p "all is good no zerro #{number}"
    end
    ensure
        p " i am here)"

 end
 dont_zero(0)
 