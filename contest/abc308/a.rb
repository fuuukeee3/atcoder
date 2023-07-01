arr = gets.chomp.split(" ").map(&:to_i)

flg = true
flg = false unless arr == arr.sort
flg = false unless arr.select {|a| a >= 100 && a <= 675}.size == arr.size
flg = false unless arr.select {|a| a % 25 == 0}.size == arr.size

puts flg ? "Yes" : "No"