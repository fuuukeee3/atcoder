a, b = gets.chomp.split(" ")
max_size = [a.size, b.size].max

a = a.rjust(max_size, '0')
b = b.rjust(max_size, '0')

flg = false
max_size.times do |i|
  flg = true if a[i].to_i + b[i].to_i >= 10
end

puts flg ? "Hard" : "Easy"