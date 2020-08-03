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