def escalier (etage)
    
    i=1


    while etage != 0

        if i == etage
            etage.times print "  "
            print "o"
            i.times -1 print"⬜"
            puts 
            i+=1
            etage-=1  
        else
            etage.times print "  "
            i.times print"⬜"
            puts 
            i+=1
            etage-=1  
        end
    end
end



escalier(5)