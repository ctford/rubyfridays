# upto() lets us do something with each number from a range of numbers.
#
# When you load this file from irb with load("week01.rb"), notice that
# all the commands are run immediately. Notice also that lines beginning
# with # are ignored.

0.upto(10) { |i|
    print(i * 10)
}

# The above statement says, for each number from 0 through to 10, let's
# give it a temporary name (i) and print it out.
#
# The bit between { and } is known as a 'block'. It's Ruby's way of making
# a little bit of code into a thing, in this case the action of taking
# a number and printing it.
#
# If you want to experiment with how this works, try typing the following
# parts into irb:
#
# > print("Hello!")
# > print(5)
# > 0.upto(10)
# > 0.upto(10).to_a()
#
# Let's say that we want to print each number on a separate line. We can
# use puts instead of print.

0.upto(10) { |i|
    puts(i*10)
}

# Challenge: print a diamond of stars that looks a bit like this.
#
#      *
#     ***
#    *****
#   *******
#    *****
#     ***
#      *
#
# The easiest way to do it is to think of it as two triangles.

# Top triangle - what should ??? be replaced with?
0.upto(10) { |i|
  #print(" " * ???)
  #puts("*" * ???)
}

# Bottom triangle - what should ??? be replaced with?
9.downto(0) { |i|
  #print(" " * ???)
  #puts("*" * ???)
}
