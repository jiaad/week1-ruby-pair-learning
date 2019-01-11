def jeu
    position = [1]
    i = 0
    while i < 9
        x = rand(1..6)
        puts "Ton lancé de dé est #{x}"
        if x >= 5
            position.push(position.count + 1)
            puts "..."
            puts "Tu avances de 1 marche, voici ta position : #{position}"
            i += 1
            puts i
        elsif x >= 2 && x < 5
            puts "..."
            puts "Rien ne se passe, voici où tu en es #{position}"
        else x == 1
            position.slice!(-1)
            puts "..."
            puts "Tu descends de 1 marche, voici ta position : #{position}"
                if i == 0
                    puts "Désolé, tu as perdu le jeu..."
                    break
                elsif i > 0
                    i -= 1
                end
        end
    end

    if i == 9
        puts "..."
        puts "!!!"
        puts "Tu as gagné !!!!!"
    else
    end
end

def perform
    jeu
end

perform
