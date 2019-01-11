# pour démarrer
def start_game ()
  puts "Bienvenue dans ton super jeu, appuie sur Entrée pour lancer le jeu"
  gets
  puts "Tu es en bas d'un escalier à 10 marches, ton objectif est d'arriver le plus vite possible à la 10ème marche sachant que :"
  gets
  puts "-Si tu fais 5 ou 6, tu avances d'une marche"
  puts "-Si tu fais 1, tu redescends d'une marche"
  puts "-Si tu fais 2, 3 ou 4, tu restes où tu es"
  gets
  puts "C'est parti? (presse Entrée)"
  gets
  action()
end
# fonction lancer de dé
def throw_dice ()
  print "Appuie sur Entrée pour lancer le dé \n"
  gets
  dice=rand(1..6)
  puts "Tu as fait : "+" "+dice.to_s
  gets
  return dice
end

# fonction jouer
def action (roll=0, stair=0)
  dice=throw_dice()
  roll+=1
  # If pour arrêter le jeu à la marche 10
    if stair !=10
  # if pour le résultat du dé
        if dice == 5 or dice == 6
          stair+=1
          puts "Bravo, tu montes une marche !!"
        elsif   dice == 1
  # Cas où le mec est déjà à 0
          if stair == 0
          else
          stair-=1
          puts "Oups, tu descends une marche !!"
          end
        else
        end
      puts "Tu es à la marche"+" "+stair.to_s
      puts "Tu es à :"+" "+roll.to_s+" "+"coups"
      gets
# Rappel de la fonction de jeu
      action(roll, stair)
    else
        puts "Bravo tu es arrivé à la 10ème marche !!!"
        puts "Tu as mis"+" "+roll.to_s+" "+"coups"
    end
return roll
end
start_game
#---------------------------------------------
# partie 2 avec le average_finish_time -- pour l'exécuter décommenter average_finish_time

def throw_dice_light ()
  dice=rand(1..6)
  return dice
end

def action_light (roll=0, stair=0)
  dice=throw_dice_light()
  roll = roll+ 1
  # If pour arrêter le jeu à la marche 10
    if stair !=10
  # if pour le résultat du dé
        if dice == 5 or dice == 6
          stair+=1
        elsif   dice == 1
  # Cas où le mec est déjà à 0
          if stair == 0
          else
          stair-=1
          end
        else

        end
# Rappel de la fonction de jeu
      action_light(roll, stair)
    else
return roll
    end
end


def average_finish_time (games)
  a=[]
  average=0
  rollf=3
  total=0
  for i in 1..games
    rollf=action_light.to_i
    total+=rollf
    end
    average=total/games
    puts average
end


# a decommenter
average_finish_time(1000)
