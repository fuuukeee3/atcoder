n = gets.chomp.to_i
arr = gets.chomp.split(" ").map(&:to_i)

flg = arr.select { |a| a.even? }.all? { |a| a % 3 == 0 || a % 5 == 0 }
puts flg ? "APPROVED" : "DENIED"