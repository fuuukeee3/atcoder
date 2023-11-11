n, k = gets.chomp.split(" ").map(&:to_i)
a = gets.chomp.split(" ").map(&:to_i)
b = gets.chomp.split(" ").map(&:to_i)

max = a.max
flg = false
b.each do |i|
  flg = true if a[i-1] == max
end

puts flg ? "Yes" : "No"