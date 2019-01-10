def signup()
    puts "Please choose your password"
    print"> "
    @password = gets.chomp.to_s
  end

  def login()
    puts "Confirm your password"
    print "> "
    confirm = gets.chomp.to_s
      if confirm == @password
        welcome_screen()
      else
        login()
      end
  end

  def welcome_screen()
    puts "Bienvenue à toi jeune prodige du code"
    puts "J'ai accès aux Whatsapp de tous les prodiges de ton groupe'"
    puts "Mais surtout n'en parle à personne"
    puts "Felix et Charles fleurtent avec Amadou"
    puts "Mais Amadou est amoureux de LebronJames :D"
  end



  def perform
      signup()
      login()
  end

perform
