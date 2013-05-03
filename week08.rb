# Week 08

# Last week we built our own assert_equals to help our tests.
def assert_equals(expected, actual, failure_message)
  if expected == actual
    "Ok!"
  else
    "Expected '" + expected.to_s + "', but found '" + actual.to_s + "': " + failure_message
  end
end

def test_assert_equals_detects_success
  result = assert_equals(1, 1, "The universe is broken.")
  assert_equals("Ok!", result, "Success message not shown.")
end

def test_assert_equals_detects_failure
  result = assert_equals(1, 2, "Maths error!")
  assert_equals("Expected '1', but found '2': Maths error!", result, "Success message not shown.")
end

# So far, we've been calling our functions like so: add_up(1, 2, 3)
# However, the built-in functions look like this: [1, 2, 3].first()
#
# Why the difference?
#
# In Ruby, we usually group data and functions together into things we call "objects".
# An object, is a specific example of a "class". For example, Fred might be an object
# from the class Person.

class Person
  def initialize(first_name, last_name, age)
    @first_name = first_name
    @last_name = last_name
    @age = age
  end

  def name
    @first_name + " " + @last_name
  end

  def age
    @age
  end

  def print_name()
    puts name()
  end
end

fred = Person.new("Fred", "Jones", 44)

# fred.methods()
# fred.age()
# fred.name()
# fred.print_name()

# Person.methods()
# Person.instance_methods()

def eldest(people)
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

end


def test_finds_youngest_person
  family = Family.new(
             [Person.new("Jerry", "Jones", 34),
              Person.new("Fred", "Jones", 44),
              Person.new("Michael", "Jones", 24)])
  result = eldest(people).name
  assert_equals("Michael Jones", result, "Youngeset person not found!")
end