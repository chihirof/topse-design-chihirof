
class User
  def initialize(name, age)
    @name = name
    @age = age
  end

  def introduce
    puts "My name is #{@name} and age is #{@age}"
    @age += 1
  end
end

user = User.new("chihiro", 29)
user.introduce
user.introduce
user.introduce