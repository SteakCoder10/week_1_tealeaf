# Exercise 1
a = [1,2,3,4,5,6,7,8,9,10]
a.each {|e| puts e}

# Exercise 2
a.each {|e| puts e if e > 5}

# Exercise 3
new_array = a.select {|e| e.odd?}
puts new_array

# Excerise 4
a << 11
a.unshift(0)
puts a

# Exercise 5
a.pop
a << 3
puts a

# Exercise 6
a.uniq!
puts a

# Exercise 7 - An array is number indexed where a hash can be of any type.  Hashes don't maintain order.  Arrays do.  Need a dictionary like functionality?  Use Hash.

# Exercise 8

h = {:a => 1, :b => 2}
new_h = {a: 1, b: 2}

puts h
puts new_h

# Exercise 9

puts h[:b]

# Exercise 10

new_h[:e] = 5

# Exercise 11

new_h.each {|k,v| new_h.delete(k) if v > 3.5}
puts new_h

# Exercise 11 - Yes
