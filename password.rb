require 'bcrypt'

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
 
def create_hash_digest(password)
    BCrypt::Password.create(password)
end

def verify_hash_digest(password)
    BCrypt::Password.new(password)
end

def create_secure_users(list_of_users)
    list_of_users.each do |user_record|
        puts user_record[:password] = create_hash_digest(user_record[:password])
    end
    list_of_users
end

puts create_secure_users(users)

# my_password = BCrypt::Password.create("my password")

#   #=> "$2a$10$vI8aWBnW3fID.ZQ4/zo1G.q1lRps.9cGLcZEiGDMVr5yUP1KUOYTa"
 
# my_password.version              #=> "2a"
# my_password.cost                 #=> 10
# my_password == "my password"     #=> true
# my_password == "not my password" #=> false
 
# my_password = BCrypt::Password.new("$2a$10$vI8aWBnW3fID.ZQ4/zo1G.q1lRps.9cGLcZEiGDMVr5yUP1KUOYTa")
# my_password == "my password"     #=> true
# my_password == "not my password" #=> false