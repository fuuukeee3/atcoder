a, b = gets.chomp.split(" ").map(&:to_i)

flg = false
(a..b).each do |n|
  flg = true if 100 % n == 0
end

puts flg ? "Yes" : "No"