def half_pyramid
    puts "Salut, bienvenue dans ma super pyramide ! Choissis un nombre en 1 et 25."
  print ">"
  etages = gets.chomp.to_i
  x = " "

  puts "Voici la pyramide :"

  (etages+1).times do |a|
    puts x*(etages-a)+"#"*a
  end
  end


def full_pyramid
  puts "Salut, bienvenue dans ma super pyramide ! Choissis un nombre en 1 et 25."
print ">"
etages = gets.chomp.to_i
x = " "
y = 1
z = "#"

puts "Voici la pyramide :"

etages.times do |a|
  puts x*(etages-a)+"#"*a+z*y
  y +=1
end
end



def perform
half_pyramid
full_pyramid
end

perform
