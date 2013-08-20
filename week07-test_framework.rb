# Challenge: sort an Array of people from oldest to youngest.
# Look up methods to help you out on Ruby docs.
def oldest_to_youngest(people)
  # ???
end

def test_oldest_to_youngest
  # ???
end

# Challenge:
#
# Writing custom checks in your tests each time gets annoying. Write a function called
# assert_equals() that you can use in all your tests.
#
# a) Write enough code to get the success case to pass.
# b) Write a second test to test the failure case (when the two arguments aren't equal).
# c) Update assert_equals() to make it pass the second test too.
# d) Write the tests again, this time using assert_equals() itself!

def assert_equals(expected, actual, failure_message)
  ""
end

def test_assert_equals_detects_success
  actual = assert_equals(1, 1, "The universe is broken.")
  if actual == "Ok!"
    return "Ok!"
  else
    return "Success not detected - expected 'Ok!' but found '" + actual + "'."
  end
end
