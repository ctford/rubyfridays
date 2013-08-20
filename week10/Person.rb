class Person
  def initialize(first_name, last_name, age)
    @first_name = first_name
    @last_name = last_name
    @age = age
  end

  def name()
    @first_name + " " + @last_name
  end

  def age()
    @age
  end

  def ==(other)
    other.name == name
  end
end
