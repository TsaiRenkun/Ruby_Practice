users = [
    {
        username: "renkun", password: "password1"
    },
    {
        username: "renkun1", password: "password1"
    },
    {
        username: "renkun2", password: "password1"
    },
]

def auth_user(username, password, list_of_user)
    list_of_user.each do |user_record|
        if user_record[:username] == username && user_record[:password] == password
            return user_record
        end
    end
    "Wrong Credentials"
end


puts "Welcome to the authenticator"
25.times {print "-"}
puts 
puts "login using your username and password"


attempts = 1 
while attempts < 4 
    print "Username: "
    username = gets.chomp
    print "Password: "
    password = gets.chomp
    
    authentication = auth_user(username,password,users)
    puts authentication

    puts "Press n to quit or any other key to contiune: "
    input = gets.chomp.downcase
    break if input == "n"
    attempts += 1
end
puts "You exceeded the number of tries, entered the wrong username/password" if attempts == 4