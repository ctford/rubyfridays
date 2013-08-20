# Takes a list of people, and returns the oldest one, using the max method.
def oldest_person(people)
  people.max do |person1, person2|
    person1["age"] - person2["age"]
  end
end

# Takes a list of lists of people, and return the oldest person in any of them. 
def oldest_person_in_the_world(peoples)
  eldests = peoples.map do |people|
    oldest_person(people)
  end
  return oldest_person(eldests)
end

# How do you know that your code works? You test it!
# This function returns true if oldest_person() is correct, and false if it has a bug.
def test_oldest_person
  fred = make_person("Fred", "Smith", 44)
  susan = make_person("Susan", "Smith", 47)
  james = make_person("James", "Smith", 4)

  eldest = oldest_person([fred, susan, james])

  return eldest["first_name"] == "Susan"
end

# > test_oldest_person()
#  => true
#
# Try introducing a bug into oldest_person(), and check that test_oldest_person()
# starts to return false.
#
# > test_oldest_person()
#  => false 

# Challenge: write a function that returns true if oldest_person_in_the_world()
# works correctly.
def test_oldest_person_in_the_world
  # ???
end

# Challenge: write a function that returns true if youngest_person()
# works correctly. 
#
# *Then*, write youngest_person() and check that it's correct using your test. 

def youngest_person
  # ???
end

def test_youngest_person
  # ???
end

# Challenge: write a function that returns true if youngest_person() works correctly. 
#
# *Then*, write youngest_person() and check that it's correct using your test.
# youngest_person() should take an Array of people and return the youngest one.
#
# Hint: Consider using max or min, which are defined on the ruby docs site.
# http://ruby-doc.org/core-1.9.3/Array.html

def youngest_person(people)
  # ??? <-- Only do this after writing the test and making sure it starts out failing!
end

def test_youngest_person
  # ??? <-- Do this first!
end
