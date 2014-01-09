a = [1,2,3]
variable_1a = 5

nonMutableVar = [1,2,3,4,5,6]
mutableVar = [1,3,3,3,3,4]

def do_something(obj)
  obj = [3,4,5]
end

a.each do |e|
  variable_1a = 7
  do_something(nonMutableVar)
  mutableVar.uniq!
  
end

puts variable_1a
puts nonMutableVar
puts mutableVar
