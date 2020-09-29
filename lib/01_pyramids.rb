etage = 0
etage_initial = 0

def ask_etage
    puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
    etage = gets.chomp.to_i
    return etage
end

def check_number(etage, etage_initial)
    if etage.even?
        puts "Je ne peux faire cette pyramide qu'avec des nombres impairs !"
    else
        wtf_pyramid(etage, etage_initial)
    end
end

# def full_pyramid(etage)
#     i=1
#     while etage != 0
#         etage -=1
#         etage.times {print " "}
#         i.times {print "#"}
#         puts 
#         i+=2
        
#     end
# end

def wtf_pyramid(etage, etage_initial)
    largeur = etage *2 -1
    for i in 0..etage/2 do
        for j in 0..largeur + 1 do
            if j >=etage -i and j <= etage + i
                print "⬜"
            else
                print "  "
            end
        end
        puts

    end

    for i in (etage/2-1).downto(0) do
        for j in (largeur +1).downto(0) do
            if j >= etage - i and j <= etage + i
                print "⬜"
            else
                print "  "
            end
        end
        puts
    end
end

def perform
    etage = ask_etage()
    etage_initial = etage
    check_number(etage, etage_initial)
end

perform()