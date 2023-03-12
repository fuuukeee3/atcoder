n = gets.chomp.to_i
arr = gets.chomp.split(" ").map(&:to_i)
arr2 = arr.dup
puts arr.find_index(arr2.sort[-2]) + 1