a, b = gets.chomp.split(" ")
ab = (a + b).to_f
flg = false
(1..320).each do |i|
  flg = true if Math.sqrt(ab) == i
end

puts flg ? "Yes" : "No"
