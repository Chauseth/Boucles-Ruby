def check_etage (etage_joueur, etage, nb_tour)
    case check
    when etage_joueur <= 0
        etage_joueur = 0
        return etage_joueur
    when etage_joueur >= 10
        return etage_joueur, nb_tour, win
    else
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
    number = rand(1..6)
    return number
end

def operation (jet, etage_joueur)
    
   case jet
        when 1
            etage_joueur -= 1
            return etage_joueur
        when 2..4
            return etage_joueur
        when 5..6
            etage_joueur += 1
            return etage_joueur
        else
            puts "Erreur : Mauvaise entrée"  
        end
end

def initialisation 
    etage_joueur = 1
    nb_etage = 10
    return etage_joueur, nb_etage
end

def perform
    etage_joueur = initialisation[0]
    etage = initialisation[1]
    nb_tour = 0
    while etage_joueur < etage
        #escalier(etage, etage_joueur)
        lancer = dice.to_i
        etage_joueur = operation(lancer, etage_joueur)
        nb_tour +=1
    end
    tour_final = nb_tour
    return tour_final
    

end

def start

    perform
end

def average_finish_time
    avg_turn = []
    100.times { 
        avg_turn.push(perform)
    }
    puts "Résumé des tours : #{avg_turn}"
    puts " LA MOYENNE EST : #{avg_turn.inject(&:+) / avg_turn.size}"
#{avg_turn.inject(&:+) / avg_turn.size}
end

average_finish_time