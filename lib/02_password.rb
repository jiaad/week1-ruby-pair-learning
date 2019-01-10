def signup
  puts "Merci de définir votre mot de pass"
  print"> "
  password = gets.chomp.to_s
  return password
end



def login
puts "confirm your pass"
cofirm = gets.chomp.to_s
end



def perform
  a = signup()
  b = login()
    while a != b
      puts "incorrect password"
      b = login
    end
  welcome_screen
end

def welcome_screen
  puts "heyy mon coco bienvenue"

end


perform
