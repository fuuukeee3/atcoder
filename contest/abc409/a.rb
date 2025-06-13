n = gets.chomp.to_i
t = gets.chomp.split("")
a = gets.chomp.split("")

flg = false
t.each_with_index do |tt, index|
  flg = true if tt == "o" && a[index] == "o"
end

puts flg ? "Yes" : "No"
