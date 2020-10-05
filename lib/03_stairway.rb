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
        lancer = dice.to_i
        etage_joueur = operation(lancer, etage_joueur)
        nb_tour +=1
    end
    tour_final = nb_tour
    return tour_final
end

def average_finish_time
    avg_turn = []
    10000.times { 
        avg_turn.push(perform)
    }
    puts "Résumé des tours : #{avg_turn}"
    puts " LA MOYENNE EST : #{avg_turn.inject(&:+) / avg_turn.size}"
end

average_finish_time