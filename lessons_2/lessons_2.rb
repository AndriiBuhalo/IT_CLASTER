#коментар 1 приклад
=begin
    написанян коментарая не з одним рядком)

=end

p "hello".class
p 1.class
p 1.0.class

p nomber_1 = 1
p name = "Bob"

#begin = "solid"
#f = 1

a =1
b = 3

total = a +
b
p total #буде 4

total = a  
 + b
p total #буде 1

total = a  \
 + b
p total #буде 4

p 5/2
p 5.0/2
#p 5/0 # зняти комент буде помилка бо на нуль ділити не можна і тут
p 0.0/0.0 # буде  Nan
p (5/2)/0.0 # буде infinity

p 5%2 # буде 1

p 4**2 #буде 16

p 'Hello world'

p 'hello \'\' World'

p "Hello #{b + 2} World"

p 'adadadadaddadadadadaddadadadda' \
'apapapapappaapap'

p 'adadadadaddadadadadaddadadadda' + #яка різниця між цим і попереднім рядком?
'apapapapappaapap'


 p %q(hello world)

 p %Q- Hello #{a+b}-

word_1 = 'seper'
word_2 = "best"
p together_words = word_1 + " " + word_2
p "super" +" " + 'word'

p "hello" == "hello"

p ('hello'+" ")* 3

p word_1 << word_2

name = "I love Ruby"
p name[0]+name[-4]
p name["R"] + name["I"]
p name[/R/] + name[/I/]

p 'Ruby'[5]

name = "Hello Ruby"
p name[6..9] 
p name['Ruby']
<<<<<<< HEAD
p name[/Ruby/]
=======
>>>>>>> ed2b48378cecc176c0dce53a810ede112598fab5

name = "Ruby is awesome"
p name [0..3]+ name[7..14]
p name.clear<<"Ruby awesome" #))
p name.split[0,3].join(" ") #))
<<<<<<< HEAD
p name.gsub(/is /, "")
name [4..6] = ""
puts name
name[4] = " "
puts name
=======
>>>>>>> ed2b48378cecc176c0dce53a810ede112598fab5


p "RUBY".downcase

p "ruby courses".size
p "ruby courses".length

p "Ruby".reverse

#Додаткові завдання


def test( par1 )
    par1 + 2
end
p test(5) #2 пункт додаткового питаня

p test (5)

p 0.4-0.3 == 0.1 # false відповідь через те що перевід в двійковій системі тому такий баг програми може бути

p "hello \#\{ World"


<<<<<<< HEAD
p  "hello %.2f How are you?" % f=1 # flove (f)
p  "hello %.2d How are you?" % d=12 # питання як застосовувати пару матодів sprint f
p  "hello %s How are you?" % s="bob" %s2  # (s) string %s=+2 + чомусь все синє якщо забрати (%s=2) ????????????пш
=======
p  "hello %.2f How are you?" %f=1 # flove (f)
p  "hello %.2d How are you?" %d=12 # питання як застосовувати пару матодів sprint f
p  "hello %s How are you?" %s="bob" %s=2  # (s) string %s=+2 + чомусь все синє якщо забрати (%s=2)
>>>>>>> ed2b48378cecc176c0dce53a810ede112598fab5

p  "hello %.2f How are you?" %f=1 # flove (f)

p %? hello world ?# можна дати будь який знак але знак однаковий як спереді так заді і метод % буде працювати


<<<<<<< HEAD
p "\u0024"

p "\u20ac"

p "\u{A5}"
=======


>>>>>>> ed2b48378cecc176c0dce53a810ede112598fab5
