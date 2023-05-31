n = gets.chomp.to_i
s = gets.chomp.split("")

flg = false
(2...n).each do |i|
  str = s[i - 2] + s[i - 1] + s[i]
  flg = true if ["RRR", "BBB"].include?(str)
end

puts flg ? "Yes" : "No"