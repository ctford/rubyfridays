
def say_hello
  puts "hello"
end

def say_hello_to(name)
  puts "Hello " + name
end

# Arrays
# define an array : a = [1,2,3,4]
# get element from an array: a[0] or a[-1]

def say_hello_to_all(names)
  # say_hello_to_all(["Rita", "Lilian", "Jamilla"])
  names.each do |name|
    say_hello_to(name)
  end  
end

# Hashs
# define a hash : h = {key => value, key2 => value2}
# get element from a hash : h[key]
def say_hello_formally_to(name)
  people = {"Louise" => "Dutchess", "Joanne" => "Lady", "Eva" => "Queen"}
  puts "Hello " + ??? + " " + name
  # {"Louise" => ??, "Joanne" => ??, "Eva" => ??}
  # Dutchess Louise, Lady Joanne, Queen Eva
  # say_hello_formally_to("Louise") => "Hello Dutchess Louise"
  
end


def say_hello_in_langauge(language, name)
#   example -> say_hello_in_langauge("luganda", "Christine")
#   --> step chi Christine
end