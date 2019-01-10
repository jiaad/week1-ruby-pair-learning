def ask_first_name
 puts "quel est ton prenom"
 print ">"
 first_name = gets.chomp.to_s
return first_name
end

#method qui permet de dire bonjour +prenom
#si aucun prenom n'est appelé par la methode GREG est la valeure par defaut
def say_hello(first_name="Mais qui es tu")
puts "bonjour #{first_name}"
end



def perform
first_name = ask_first_name
hello = say_hello(first_name)
end

perform
