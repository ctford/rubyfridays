class Animal
  def initialize(name, species)
    @name = name
    @species = species
  end

  def name()
    @name + " the " + @species
  end

  def ==(other)
    other.name == name
  end
end