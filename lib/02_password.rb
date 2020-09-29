
def signup
    puts "Merci de choisir votre mot de passe ultra-top secret : "
    gets.chomp
end

def login (password)
    puts "Merci de renseigner votre mot de passe ultra-top secret : "
    user_input = gets.chomp
    if user_input == password
        return true
    else
        puts "Accès refusé"
    end
end

def welcome_screen
        puts "Bienvenue sur votre page ultra-top secrete, voici le code pour le WiFi : THPRuby2020"
    
end

def perform 
    password = signup
    if login(password) == true
        welcome_screen
    end
end

perform