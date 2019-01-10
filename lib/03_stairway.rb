
def gameon()
  return rand(1..6)
  if rand(1..6) > 5
    x += 1
    puts "Vous avancez d'une case!"
    puts "Vous êtes sur la case numéro #{x}"
  until x == 10
    puts "You are on the top of the world!"
    gameon()
    end
  elsif rand(1..6) >= 2 && result <= 4
    x = x + 0
    puts "Blanc sur rouge, rien ne bouge!"
    puts "Vous êtes sur la case numéro #{x}"
    gameon()
  else rand(1..6) == 1
    x -= 1
    puts "OOh, vous reculez d'une case"
    puts "Vous êtes sur la case numéro #{x}"
    gameon()
  end
end


def perform
gameon()
end

perform
