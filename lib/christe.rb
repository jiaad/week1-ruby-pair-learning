#***************************************************
#   THP Session 7 - Jour 4 - Application du Ruby
#   Ecrit par Lauren OLIVIER & Guillaume CHRISTE
#
#   Nom : 03_stairway.rb
#   Description:
# 		- Génération d'un chiffre aléatoire
# 		- Création de l'escalier avec le bonhomme
# 		- Mise en place de l'avancée selon le résultat du dé (règle du jeu)
# 		- Statistiques sur 100 parties
#       - Lancement d'un jeu et affichage du déroulé de la partie, et des différents messages de progressions + statistiques
#***************************************************

#***************************************************
# Function 'random'
# 	>> Génération d'un chiffre aléatoire entre 1 & 6
#***************************************************
def random
  puts "Press enter"
gets.chomp

roll = rand(1..6)

	iNum = rand(1..6)
	return iNum
end
# Fin de la fonction 'random'
#....................................................

#***************************************************
# Function 'stair'
# 	>> Création de l'escalier avec le bonhomme en fonction de sa position
#***************************************************
def stair(position)
	# Initialisation du nombre d'étages, de l'étage en cours et du string de "#"
	etages= 10
	e= etages - 1
	i="#"

	#Création de la ligne 11 (première ligne affiché en partant du haut)
		#Ajout d'espaces pour la lisibilité
		print "    "

		# Ajout de 11 espaces (10 étages + 1 cases gérant le pied de l'escalier)
		11.times do
			print " "
		end

		#Gestion de la 12ème case (au dessus du dernier #) pour afficher un bonhomme £ ou un espace
		if position == 10
			print "£"
		else
			print " "
		end
		puts ""

	#Traitement des étages de la pyramide
	etages.times do |etage|
		#Ajout d'espaces pour la lisibilité
		print "     "

		#On affiche des espaces (nbr = étage en cours - 1 pour gérer la case devant le #)
		e.times do
			print " "
		end

		#Si le bonhomme est à cet étage, on l'ajoute sinon on met un espace
		if position == (10 - (etage + 1) )
			print "£"
		else
			print " "
		end
		#Affichage des #
		puts i
		#On incrémente le string i d'un # supplémentaire
		i+="#"
		#On décrémente le numéro de l'étage en cours
		e-=1
	end
end
# Fin de la fonction 'stair'
#....................................................

#***************************************************
# Function 'progress'
# 	>> Mise en place de l'avancée selon le résultat du dé (règle du jeu)
#***************************************************
def progress(iNum, position)
	#Si le dé sort 5 ou 6, on avance d'une case
	if iNum == 5 || iNum == 6
		step = 1
	#Si le dé sort 2, 3 ou 4 ou que le dé est 1 mais la position du bonhomme est 0, on fait rien
	elsif (iNum == 2 || iNum == 3 || iNum == 4) || (iNum == 1 && position == 0)
		step = 0
	#les autres cas (dé = 1), on recule
	else
		step = -1
	end
	return step
end
# Fin de la fonction 'progress'
#....................................................

#***************************************************
# Function 'average_finish_time'
# 	>> Statistiques sur 100 parties
#***************************************************
def average_finish_time
	#Création d'un tableau vide
	table=[]

	#On lance le jeu 100 fois (position du bonhomme = 0 & nbr de lancé (i) = 0)
	100.times do
		position = 0
		i = 0
		while position < 10
			iNum = random						# Stokage du résultat de la fonction 'random'
			step = progress(iNum, position)		# Appel de la fonction 'progress' fonction de la position du bonhomme & de la fonction d'avant (valeur dé)
			position += step					# On modifie la position du bonhomme en fonction de la fonction d'avant
			i+=1								# Comptage d'un lancé
		end
		#On ajoute le nombre de lancé dans la table
		table << i
	end
	#Calcul de la moyenne
	average = table.sum / table.size.to_f
	return average
end
# Fin de la fonction 'average_finish_time'
#....................................................

#***************************************************
# Main Function 'perform'
# 	>> Lancement d'un jeu et affichage du déroulé de la partie, et des différents messages de progressions + statistiques
#***************************************************
def perform
	puts "Bienvenue au jeu de l'oie informatique"
	puts "Ce jeu passionnant va te montrer un bonhomme (symbolisé par '£') monter un escalier"
	puts "Eeeeeeet c'est parti ... tu pars de 0"
	puts ""

	#Initiation de la position du bonhomme à 0
	position = 0
	#Affichage de l'escalier avec le bonhomme en position 0
	stair(position)
	puts ""

	#Lancement du jeu tant que le bonhomme n'est pas au sommet de la pyramide (position = 10)
	while position < 10
		#Jeté de dé via fonction 'random' et affichage de la valeur
		puts "************************************************"
		puts "Nouveau lancé de dé"
		iNum = random
		puts "Tu as tiré le numéro #{iNum}"

		#Calcul de la progression (selon les règles) via la fonction 'progress' avec arguments le dé et la position
		step = progress(iNum, position)
		#Affichage de la progression
		if step == 1
			puts "Félicitation - Tu avances d'une marche"
		elsif step == 0
			puts "Feignasse - Tu ne bouges pas"
		else
			puts "Perdu - Tu recules d'une marche"
		end

		#Incrémentation de la position du bonhomme
		position += step
		puts "Ta nouvelle position est #{position} !!"

		#Affichage de l'escalier mis-à-jour
		stair(position)
		puts ""
	end

	#Quand la position est 10, on affiche le message
	puts "············································"
	puts " TU ES UN·E OUF - Tu es en haut de l'escalier"
	puts "............................................"

	#Lancement du calcul des stats sur 100 parties grâce à la fonction 'average_finish_time'
	average = average_finish_time
	puts "INFO NAZE : Le nombre moyen de tours par partie est de #{average} - moyenne sur 100 parties !"

	puts ""
	puts "<3<3<3<3<3<3<3<3<3<3<3<3<3<3<3"
	puts "<3 from Lauren & Guillaume  <3"
	puts "<3<3<3<3<3<3<3<3<3<3<3<3<3<3<3"
	puts ""
end
# Fin de la fonction 'perform'
#....................................................

# Lancement de la fonction 'perform'
perform
