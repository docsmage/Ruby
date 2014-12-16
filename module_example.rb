module Communication # Composition

  def hello
    puts 'Hello World'
  end

  def bye
    puts 'Bye bye'
  end

end


class Person # Inheritance

  # include Communication
  attr_reader :name 

  def initialize(name)
    @name = name
  end

  def hello
    puts 'Hello World'
  end

  def bye
    puts 'Bye bye'
  end

  def make_baby
    Baby.new("#{name} Jr.")
  end

end

class Baby < Person # Inheritance
  attr_reader :something

  def initialize(name)
    super(name)
    @something = 'blah'
  end

  def hello
    super
    puts 'wa wa wahhhhhh'
  end

end

puts "Examples of composition:" # The driver code below is composition
sam = Person.new('sam') 
sam.hello # "Hello World"
sam.bye # "Bye bye"
p sam # puts human object sam
p sam.make_baby # puts baby sam object
puts "*" * 99 # separator
puts "Examples of inheritance:"# The work below is inheritance
baby = Baby.new('baby') 
baby.hello # puts "Hello World"
baby.bye # "wa wa wahhhhhh"
p baby # puts "Bye bye"
puts baby # puts baby object

# Making changes