class Person
  #have a first_name and last_name attribute with public accessors
  #attr_accessor 
attr_accessor:first_name,:last_name
  #have a class attribute called `people` that holds an array of objects
  @@people = []
  #have an `initialize` method to initialize each instance
  def initialize(x,y)#should take 2 parameters for first_name and last_name
    @first_name=x#assign those parameters to instance variables
    @last_name=y#add the created instance (self) to people class variable
    @@people << self
  end
    #have a `search` method to locate all people with a matching `last_name`
  def self.search(apellido)
    
   @@people.select {|x| x.last_name==apellido}   
      
   end

  #have a `to_s` method to return a formatted string of the person's name
  def to_s
    "#{@first_name} #{@last_name}"
    #return a formatted string as `first_name(space)last_name`
  end
end

p1 = Person.new("John", "Smith")
p2 = Person.new("John", "Doe")
p3 = Person.new("Jane", "Smith")
p4 = Person.new("Cool", "Dude")

puts Person.search("Smith")

# Should print out
# => John Smith

