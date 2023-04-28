a, b = gets.chomp.split(" ").map(&:to_i)
flg = false
flg = true if a % 3 == 0
flg = true if b % 3 == 0
flg = true if (a + b) % 3 == 0

puts flg ? "Possible" : "Impossible"
