class User
    # becomes a getter 
    attr_accessor :name, :email

    # only use to read
    # attr_reader :username
    

    # it cleans up your code giving the developer the ability to initize and set values
    def initialize(name, email)
      @name = name
      @email = email
    end

    def run
      puts "Hey I'm running"
    end

    def self.identify_yourself
      puts "Hey I am a class method"
    end
  end

  user = User.new("mashrur", "mashrur@example.com")
  user.run

  User.identify_yourself # to run this class method you don't need an instance of user 
                        # you can direct


                        class Student
                            attr_accessor :first_name, :last_name, :email, :username, :password
                           
                            def initialize(firstname, lastname, username, email, password)
                              @first_name = firstname
                              @last_name = lastname
                              @username = username
                              @email = email
                              @password = password
                            end
                           
                            def to_s
                              "First name: #{@first_name}, Last name: #{@last_name}, Username: #{@username},
                                            email address: #{@email}"
                            end
                           
                          end
                           
                          mashrur = Student.new("Mashrur", "Hossain", "mashrur1", "mashrur@example.com",
                                                "password1")
                          john = Student.new("John", "Doe", "john1", "john1@example.com",
                                                "password2")
                          puts mashrur
                          puts john
                          mashrur.last_name = john.last_name
                          puts "Mashrur is altered"
                          puts mashrur
