n, s, d = gets.chomp.split(" ").map(&:to_i)
flg = false
n.times do
  x, y = gets.chomp.split(" ").map(&:to_i)
  flg = true if x < s && y > d
end

puts flg ? "Yes" : "No"