n = gets.chomp.to_i
arr = gets.chomp.split(" ").map(&:to_i)
arr.sort!

p arr[n...-n].sum.to_f / ((5 * n) - (2 * n))