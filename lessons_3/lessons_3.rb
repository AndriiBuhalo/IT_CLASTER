puts a = [1,2,3,4,5]
p b = (1..3).to_a
p c = [[1,2,3],[4,5,6],[7,8,9]]
x,y = 4,5
puts c = [x + y, x - y, x * y]
p %w[Helo_world, dreams, honnor]
p r =%W[#{x}, #{y}, #{a}].map(&:to_i).flatten
p d = (1..10).to_a
p d[0] 
p d[-1]
p d = d[d.size-1]

 d = (1..10).to_a
 d[0] = 4
p d

d[15] = 8
p d

p k = ['a', 'b', 'c', 'd', 'e']
p k[0,2]
p k[0...2]

p k[-2,2]
p k [3..4]

z =[1,2]
p z +[3,4,5]
p z<<3<<4<<5
p [1,2].concat([3,4,5])
p z.insert(3, 6)
#p z +"name" # буде помилка не можливо зєднати стрінг і масив
 z.pop(2)
 p z
z.shift(2)
p z
k = []
p k << 4

p k = Array.new(10,2)
p k = [2]*10

a,b = [1,1,2,2,3,3,4],[5,5,4,4,3,3,2]
p a|b
p b|a
p b&a
p a&b

a = ['cat', 'dog', 'bird', 'flower' ]
p a.any?{|x| x.length>=3}
p a.collect{|x| x+"?"}


a = ['a', 'b', 'c', 2, 'e']
a.delete('c')
p a

#a = ([1]*50).each{|x| p x}

b =[]
p b.empty?

p a[0]

p b = [[1,2,3],[4,5,6],[7,8,9]].flatten

p a = ['cat', 'dog', 'bird', 'flower' ].include?('cat')

b = (1..10).to_a
b.each{|x| puts x if x%2 == 0}

p a = [1,2,3,4,4,4,5]
p a.uniq

p a = Hash.new
 a["one"] = 1
 a["two"] = 2 
 a["three"] = 3
 p a

p b = {one: 1, two: 2, three: 3}
p c = {:one => 1, :two => 2, :three => 3}
p d = {"one"=>1 , "two"=>"two", "three"=> true}


z =(1..10).each{|x| print x.to_s+" "}
puts
r =(1...10).each{|x| print x.to_s+" "}
puts
p r.include?(5)
p z.include?(5)
p r.include?(10)

f = "a".."k"
f.each{|x| print x+", "}

puts
f.step(2) {|x| print x+", "}
puts
a = f.step(2){|x| print "[#{x}]"}
puts

a = :s
p a

b ="bla".to_sym
p b

p o = nil.nil?

p false == nil

p false == 0

p false == ""

p false == {}

p false == []

p false == false

a = 0.0 if false

p PI= 3.14

x = 1 
p x+=5

print x,y,z =1,2,3

p a=b=3

k =10
p (((k +2) -4) *3)/4

# Додатково)

p a = Array.new

p b = Array.new(3)

p r = Array.new(4,1)

p clone = r.clone

# 5 ?????

