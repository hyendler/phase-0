**What does puts do?**

Puts returns no value and prints the output to the console on a new line.  Is useful sometimes for double checking to see whether or not the correct item is being returned. 

**What is an integer? What is a float?**

Integer is a whole number, either postive or negative.  Float is a decimal.

**What is the difference between float and integer division?**

Float division allows you to divide decimals and get a decimal in return, whereas integer division will give you a whole number (the floor of the whole number).

**How would you explain the difference to someone who doesn't know anything about programming?**

Sometimes you don't have numbers that are perfect whole numbers - they are fractions, or decimals.  As such, float division allows for numbers like that, and allows for the answers not to be perfect whole numbers.  However, integer division only accepts and returns whole numbers, which is good for figuring out the value of non-fractionable items.

```ruby
puts 365*24
puts 60*24*365*10

```