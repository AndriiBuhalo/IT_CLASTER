# 1
def methematics(n)
    p n * 2 + 4
end
methematics(10)
#2
def del_on_10(n)
   a =   n * 2 + 4
   return p 24 if a ==24
   p "не вгадав)"
end
del_on_10(21)

#3
def test_string1(name)
    "-Як тебе звати, Бо мене #{name}"
end
p test_string1("Іван")

def test_string1(name)
   return "-Як тебе звати, Бо мене #{name}"
end
p test_string1("Олежка")

#4
def array_method (name, age)
["#{name}" + " Петрович", age]
end
a = array_method('Олег',32)
p a[0]
p a[1]

#5
def qestion(name)
    "-Як справи #{name}?"
end
p qestion("куме")
undef qestion
# p qestion("куме")

#6
def you_are_here?(tell)
    return true if tell == "+"|| true || "yes" || "Yes" || "YES"
    return false if tell == "-" || false || "no" || "No" || "NO"
end
p you_are_here?(true)

#7
a = [1,2,3]
def exclamation_mark!(a)
    #  self.map {|x| x.to_s + "!"}
     a.map!{|x| x.to_s + "!"}
end
p exclamation_mark!(a)
p a

#8
def qestion(name)
    "-Як справи #{name}?"
end

alias how_are_you qestion # перше як буде нова назва а інше це яка стара назва
p how_are_you("Олег")

#9, 10
def adding(part1 = 7, part2 = 10)
(7 * part1)+ part2 - 10
end
p adding(8)
p adding(3, 5)
p adding

#11
a ={"one"=> 4, "two"=> 7, "tree"=> 8, "four"=> 2, "five"=> 3}
b =["two", "tree", "four"]
def test_for_hesh(a,b)
p a.slice(*b)
end
test_for_hesh(a,b)

#12
k = [1, 4, 6, 7, 9, 2, 4, 7, 9, 3, 1, 0.1, 5]
def min_in_array(k)
    p k.min
end
min_in_array(k)

#13??????????
def test(optins)
    four = optins[:four] || 3
    two = optins[:two] || 2
    tree = optins[:tree] || 3
    one = optins[:one] || 4
    five = optins[:five] || 5
    p "Hello #{one} and #{two} and #{tree} and #{four} and #{five} "
end
test({
one: 2,
two: 5,
five: 7
})
p "_______________________"
#14
def iteration(n,k,s)
    if n == 0 ||k == 0
        return 0
    end
    i = 0
    while i < n
    yield i * k + s-n
    i += 1
    end
end
iteration(5,3,6){|x| p x}

p "_______________________"
#15
def iter_lambda(n,k,p,&s)
    if n == 0 ||k ==0
        return 0
    end
    i =0
    while i< n
    s.call(i*k-p+n)
    i +=1
    end

    end
    iter_lambda(10,5,8){|l| p l}
    p "_______________________"

#16
def iter_proc(n,k,p,l)
    if n == 0 ||k ==0
        return 0
    end
    i =0
    while i< n
    l.call(i*k-p+n)
    i +=1
    end
    
end
s = Proc.new{|l| p l}
iter_proc(8,6,4,s)
p "_______________________"

#17
# The inject and reduce methods are aliases) So..
b = (3..21).to_a
p b.reduce(:+)
p b.inject(&:+)

p "_______________________"
#18
def uper(a)
    a.map { |x| x.upcase}.join('')
end
k =["c","a","t"]
p uper(k)

p "_______________________"
#19
# блоки можна оголосит трьома параметрами через лямбду прок і через yield

def yield_test(d)
    yield d.upcase + "!"
end
a = "Hello"
yield_test(a){|x| p x}

def lambda_test(a,&d)
    d.(a+" "+ "world")
end
a = "Hello"
lambda_test(a){|x| p x}

def proc_test(a,d)
    d.(a+" "+ "world")
end
a = "Hello"
d = Proc.new{|x| p x}
proc_test(a,d)

p "_______________________"
#20
def lambda_test(a,b,&d)
    d.call(a,b)
end
a = "Hello"
b = " world"
lambda_test(a,b){|x,y| p x+y}

p "____________--------------------------___________"
# додатково
#1
def factorial(number)
        return p "число має бути більше за 0" if number < 0
    return 1 if number == 1
        number * factorial(number-1)
    
end
a = 5 
p "factorial #{a}! =" + " " + factorial(a).to_s

p "_______________________"
#2
# лямюду або прокс можна викликати наступним методами
# lambda.call, lambda.() , lambda[], lambda.===
lam = lambda {|x| p x}
lam.===("hello")
begin
lam.("hello","world")
rescue
    p "помилка дві переміннів вказані а дано 1 (х)"
end

procs = Proc.new{|x,y,z| p x,y}
procs["hello"]
procs.("hello","world")

p "_______________________"
#3
def multi(n)
    lambda{|x| x.collect{|x| x*n}}
end
doubl = multi(3)
p doubl.call([1,2,3,4])

p "_______________________"
#4
#  k = (5..35).to_a
# def midlle (k)
#     l = k.reduce(:+) #620
#    s = k.size   #31
#     p l/s
# end
# midlle(k)

p "_______________________"
#5
j = "hello"
def center (j)
   a =j.split("")
   a.pop
   a.shift
   p a.join("")
end
center(j)

p "_______________________"
#6
def vovels(h)
    if h.class != String
     return p " ведіть лише букви) say something)"
    end
    p a = h.upcase
    count = 0
    leters = ['A','Е','И','І','О','У','Г','U','Y']
    a.split("").each do|x|
        count += 1 if x == 'A'||'Е'||'И'||'І'||'О'||'У'||'Г'||'U'||'Y'
    end
    # h.each {|x|count += 1 if x == leters }
    p count
end
s = "hello  як справи"
r = 1
vovels(s)
vovels(r)

p "_______________________"
#7 
def collect(filrst, *midlle, last)
    p midlle.join(",")
end
g = ('A'..'E').to_a
collect(*g)
#or
def collect2(h)
    h.pop
    h.shift
    p h.join(",")
end
collect2(g)

