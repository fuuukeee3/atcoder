s = gets.chomp.split("")
flg = true
(0..15).each do |i|
  flg = false if i.odd? && s[i] == "1"
end

puts flg ? "Yes" : "No"