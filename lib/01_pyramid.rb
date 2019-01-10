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
  puts "Salut, bienvenue dans ma MEGApyramide ! Choissis un nombre en 1 et 25."
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

def wtf_pyramid
  puts "Salut, bienvenue dans ma MEGApyramide ! Choissis un nombre en 1 et 25."
print ">"
etages = gets.chomp.to_i
x = " "
y = 1
z = "#"


puts "Voici la pyramide :"

etages.times do |a|
  if a <= etages/2
    puts x*(etages-a-1)+"#"*a+z*y
    y +=1
  else
    print (' '*a)
    puts '#'*((etages*2-(a*2))-1)

end
end
end


def perform
wtf_pyramid
end

perform
