n = gets.chomp.to_i
arr = gets.chomp.split(" ").map(&:to_i)
new_arr = arr.select {|a| a > 0}
bug = new_arr.sum / new_arr.size.to_f
puts bug.ceil