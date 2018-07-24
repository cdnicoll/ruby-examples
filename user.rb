class User

  # same as using getters and setters
  attr_accessor :name, :email

  # class constructor called everytime a object is created
  def initialize(name, email)
    # @ symbol signifys that it's an instance variable
    @name = name
    @email = email
  end

  def walk
    puts "I'm just walking"
  end

  def run
    puts "Hey i'm running!"
  end

  # accessor methods
  def get_name
    @name
  end

  def set_name(name)
    @name = name
  end

  # a different way to call a setter
  # user.set_name = "newName"
  def set_name=(name)
    @name = name
  end



end

user1 = User.new("Foo", "foo@bar.com")
user2 = User.new("Bar", "bar@foo.com")

puts user1.run
puts user2.walk
puts user1.get_name
user1.set_name("Tal")
puts user1.get_name
puts user1.email
