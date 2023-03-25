n = gets.chomp.to_i
arr = gets.chomp.split(" ")

flg = false
flg = true if arr.include?("and")
flg = true if arr.include?("not")
flg = true if arr.include?("that")
flg = true if arr.include?("the")
flg = true if arr.include?("you")

puts flg ? "Yes" : "No"
