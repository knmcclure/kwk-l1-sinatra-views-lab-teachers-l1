class Dog 
  
  @@all_names = []
  @@count = 0
  attr_accessor: name, age
  
  def initialize(name, age)
    @name = name
    @age = name
    @@all_name << name
    @@count += 1
  end
end