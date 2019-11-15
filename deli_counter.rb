def line(katz_deli)
  if katz_deli.length == 0
    puts "The line is currently empty."
  elsif katz_deli.length > 1
    new_deli = "The line is currently:"
    katz_deli.each_with_index {|name, i|
    new_deli << " #{i+1}." + " #{name}"}
    puts new_deli
  end
end
def take_a_number(katz_deli, str)
  if katz_deli.length == 0
    katz_deli << str
    puts "Welcome, #{katz_deli[0]}. You are number #{katz_deli.length} in line."
  elsif katz_deli.length >= 1
    ctr = katz_deli.length
    katz_deli.push(str)
    ctr += 1
    puts "Welcome, #{katz_deli[ctr-1]}. You are number #{katz_deli.length} in line."
  end
end
def now_serving(katz_deli)
  if katz_deli.length > 0
    ctr = katz_deli.length
    srv = "Currently serving #{katz_deli[0]}."
    puts srv
    katz_deli.shift
  elsif katz_deli.length == 0
    puts "There is nobody waiting to be served!"
  end
end
# Write your code here.