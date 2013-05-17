# Last week we worked with our own classes.
#
# Remember, in Ruby, we usually group data and functions together into
# things we call "objects".
#
# An object, is a specific example of a "class". For example, Fred might
# be an object from the class Person.
#
# A group of people might be an object from the class Family.
#
# We don't have to put all this in the one file. In fact, a good program
# is broken up across several files and "required" in.

require_relative "Person"
require_relative "Family"

# We can test our methods and objects using assert_equals.
def assert_equals(expected, actual, failure_message)
  if expected == actual
    "Ok!"
  else
    "Expected '" + expected.to_s + "', but found '" + actual.to_s + "': " + failure_message
  end
end

# Now let's use our == method (indirectly) to implement member?
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

def test_person_name
  fred = Person.new("Fred", "Jones", 43)
  result = fred.name
  assert_equals("Fred Jones", result, "Name was wrong.")
end

def test_animal_name
  leo = Animal.new("Leo", "Lion")
  result = leo.name 
  assert_equals("Leo the Lion", result, "Name was wrong.")
end

# We can write code that works with different classes, so long as they have the right methods.
#
# In this case, Family works with both Person and Animal - so long as they both have a name method.
def test_animals_are_part_of_the_family
  joneses = Family.new(
             [Person.new("Jerry", "Jones", 34),
              Animal.new("Leo", "Lion"),
              Person.new("Michael", "Jones", 24)])
  result = joneses.member? Person.new("Leo", "Lion")
  assert_equals(true, result, "Animal not found to be a member of the family.")
end
