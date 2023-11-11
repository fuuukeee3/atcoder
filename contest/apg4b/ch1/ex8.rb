# p = gets.chomp.to_i

# if p == 1
#   price = gets.chomp.to_i
# end

# if p == 2
#   text = gets.chomp
#   price = gets.chomp.to_i
# end

# n = gets.chomp.to_i

# puts "#{text}!"
# puts price * n

p = gets.chomp.to_i

if p == 1
  price = gets.chomp.to_i
end

if p == 2
  text = gets.chomp
  price = gets.chomp.to_i
end

n = gets.chomp.to_i

puts "#{text}!" if p == 2
puts price * n
