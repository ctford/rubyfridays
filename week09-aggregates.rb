# Last week we built our first class.
#
# Remember, in Ruby, we usually group data and functions together into
# things we call "objects".
#
# An object, is a specific example of a "class". For example, Fred might
# be an object from the class Person.

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
    false # This isn't right! 
  end
end

fred = Person.new("Fred", "Jones", 44)
fred.methods()
fred.age()
fred.name()

Person.methods()
Person.instance_methods()

def eldest(people)
  people.max do |person1, person2|
    person1.age - person2.age
  end
end

# We can test our methods and objects using assert_equals.
def assert_equals(expected, actual, failure_message)
  if expected == actual
    "Ok!"
  else
    "Expected '" + expected.to_s + "', but found '" + actual.to_s + "': " + failure_message
  end
end

def test_finds_oldest_person
  people = [Person.new("Jerry", "Jones", 34),
            Person.new("Fred", "Jones", 44),
            Person.new("Michael", "Jones", 24)]
  result = eldest(people).name 
  assert_equals("Fred Jones", result, "Eldest person not found!")
end

# We don't have to use raw Arrays to gather things together. We can
# build classes that hold other objects.
class Family
  def initialize(people)
    @people = people
  end

  def youngest()
    @people.min do |person1, person2|
      person1.age - person2.age
    end
  end

  def member?(person)
    false # This isn't right!
  end
end

def test_finds_youngest_person
  joneses = Family.new(
             [Person.new("Jerry", "Jones", 34),
              Person.new("Fred", "Jones", 44),
              Person.new("Michael", "Jones", 24)])
  result = joneses.youngest.name 
  assert_equals("Michael Jones", result, "Youngest person not found!")
end

# Arrays let us test to see if something is contained in them e.g.
# > [3, 4].member?(3)
#   => true
#
# We want to do the same thing for Family. We need to do two things:
# * Define == for a Person
# * Define member? for a Family

# Let's start by defining what it means for two people to be equal.
#
# Challenge: go through these tests one-by-one, and update the Person
# class to make them return true. In other words, make the test
# pass.
#
# You run the tests like this:
# > test_equals()
# > test_different_first_name_not_equals()
def test_equals
  result = Person.new("Fred", "Jones", 34) == Person.new("Fred", "Jones", 34)
  assert_equals(true, result, "The same person was not found to be equal.")
end

def test_different_first_name_not_equals
  result = Person.new("Mark", "Jones", 34) == Person.new("Fred", "Jones", 34)
  assert_equals(false, result, "Different first names were found to be same person.")
end

def test_different_last_name_not_equals
  result = Person.new("Fred", "Brookes", 34) == Person.new("Fred", "Jones", 34)
  assert_equals(false, result, "Different last names were found to be same person.")
end

def test_different_ages_still_equals
  result = Person.new("Fred", "Jones", 54) == Person.new("Fred", "Jones", 34)
  assert_equals(true, result, "Different ages made a person not equal.")
end

# Now let's use our == method (indirectly) to implement member?
#
# Challenge: these two tests should also pass. You'll need to update Family.
def test_is_not_member_of
  joneses = Family.new(
             [Person.new("Jerry", "Jones", 34),
              Person.new("Fred", "Jones", 44),
              Person.new("Michael", "Jones", 24)])
  result = joneses.member? Person.new("Max", "Plank", 44)
  assert_equals(false, result, "Person wrongly found to be a member of the family.")
end

def test_is_member_of
  joneses = Family.new(
             [Person.new("Jerry", "Jones", 34),
              Person.new("Fred", "Jones", 44),
              Person.new("Michael", "Jones", 24)])
  result = joneses.member? Person.new("Fred", "Jones", 34)
  assert_equals(true, result, "Person wrongly found not to be a member of the family.")
end
