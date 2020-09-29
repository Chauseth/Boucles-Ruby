def initialisation 
    etage_joueur = 1
    nb_etage = 10
    return etage_joueur, nb_etage
end

def check_etage (etage_joueur, etage)
    if etage_joueur >= etage 
        puts "Felicitation, vous avez gagné !"
        exit
    else
        if etage_joueur <= 0
            etage_joueur = 0
            puts "Il faut tout remonter !"
        else
            puts "Vous êtes à l'étage #{etage_joueur}/#{etage}"
        end
    end
    
end

def escalier (etage, etage_joueur)
    i=1
    while etage != 0

        if etage_joueur == etage
            (etage-1).times {print "  "}
            print"OO"
            i.times {print"⬜"}
            
            puts 
            i+=1
            etage-=1  
        else
            etage.times {print "  "}
            
            i.times {print"⬜"}
            puts 
            i+=1
            etage-=1  
        end
    end
end

def dice
    lancer = 0
    puts "Voulez-vous lancer les dés ? (oui/non)"
    print "> "
    choice = gets.chomp
    if choice == "non"
        return false
    else
       if choice == "oui"
           number = rand(1..6)
           puts "Vous avez fait un ...  #{number}!"
           return number
       else
           puts "Merci d'indiquer oui ou non"
       end 
    end
end

def operation (jet, etage_joueur)
   case jet
        when 1
            etage_joueur -= 1
            puts "Aïe, vous êtes descendu d'une marche, vous êtes maintenant a la marche #{etage_joueur}"
            return etage_joueur
        when 2..4
            puts "Vous ne bougez pas"
            return etage_joueur
        when 5..6
            etage_joueur += 1
            puts "Bravo, vous avez avancé d'une marche ! Vous êtes maintenant a la marche #{etage_joueur}"
            return etage_joueur
        else
            puts "Erreur : Mauvaise entrée"  
   end
end

def start
    initialisation

    perform
end

def perform
    etage_joueur = initialisation[0]
    etage = initialisation[1]
    while etage_joueur <= etage

        escalier(etage, etage_joueur)
        check_etage(etage_joueur, etage)
        lancer = dice.to_i
        etage_joueur = operation(lancer, etage_joueur)
        puts etage_joueur
    end

end

start