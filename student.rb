# bring in methods into your objects
require_relative 'crud';

class Student

    include Crud

    attr_accessor :first_name, :last_name, :email, :username, :password

    def initialize(firstname, lastname, username, email, password)
        @first_name = firstname
        @last_name = lastname
        @username = username
        @email = email
        @password = password
    end

    def to_s
        "hello name #{@firstname} and #{@lastname}"
    end
end
renkun = Student.new("Tsai", "renkun", "kun1" ,"kun@gmail.com", "password")

hashed_password = renkun.create_hash_digest(renkun.password)

puts hashed_password