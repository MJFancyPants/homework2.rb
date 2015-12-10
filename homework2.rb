# RUBY HW 2
#PART 1

# The fizzbuzz method takes the value of parameter num and using
# the "When Else" case statement it divides the value of num
# using a modulus and assigns num a new string value "when" the remaining
# value is zero.

# The fizz_buzz_to method uses the Ruby "upto each do" loop
# Taking the value of num and assigning it to parameter "limit"
# The upto each do loop counts up from 1 and loops 1 time
# fizz_buzz_to then prints the fizzbuzz method, checking
# parameter num again the when else statement.

# defines the method fizzbuzz which take the parameter num
def fizzbuzz(num)
  # Begins the when else case statement
  case
    # Tells the computer divide the value of num using
    # a modulus and if the remaining value is 0 then assign
    # num a new string value
  when num % 15 == 0 then "FizzBuzz"
  when num % 3  == 0 then "Fizz"
  when num % 5  == 0 then "Buzz"
  # If none of the cases above are met then keep
  # The value of num the same.
  else num
  # Close the case statement
  end
# Close the fizzbuzz method
end

# defines the method fizz_buzz_to which takes the parameter limit
def fizz_buzz_to(limit)
  # The ruby upto each do loop takes the block value of num
  # and assigns it to variable limit.
  # It then loops "upto" the value assigned to limit 
  # "1" time
  1.upto(limit).each do |num|
    # prints the fizzbuzz method's num value, after each loop
    puts fizzbuzz(num)
    # Closes the do method
  end
  # Closes the fizz_buzz_to method
end

# Prints fizz_buzz_to method
puts fizz_buzz_to(30)

# PART 2

class Homework
  def shout(all_caps)
    all_caps.upcase
  end
end

assignment = Homework.new
puts assignment.shout("can you make this uppercase, please?")

# PART 3
def repeat_string(string1, integer1)
  return [string1] * integer1
end

puts repeat_string("You can say that again", 2)

# PART 4
def calendar(array1, array2)
  # holidays = {"Christmas" => "Dec 25", "Hanukkah" => "Dec 6 to Dec 14", "Kwanzaa" => "Dec 26 to Jan 1", "Festivus" => "Dec 23"}
  array1.zip(array2).to_h
end

array1 = ["Christmas", "Hanukkah", "Kwanzaa", "Festivus"]
array2 = ["Dec 25", "Dec 6 to Dec 14", "Dec 26 to Jan 1", "Dec 23"]

puts calendar(array1, array2)

# QUESTIONS

#1 An instance variable has a name beginning with @, and its scope is confined to whatever object self refers to. Ex. @variablename.

#2 Integer Class Method
# even Integer Method --> true or false
# This returns "true" if int class is an even number
# Ex: 
# static VALUE
# int_even_p(VALUE num)
# {
#     if (rb_funcall(num, '%', 1, INT2FIX(2)) == INT2FIX(0)) {
#         return Qtrue;
#     }
#     return Qfalse;
# }
# My definition: a ruby method to quickly check the value of an integer class, and return a "true" or "false" boolean.


