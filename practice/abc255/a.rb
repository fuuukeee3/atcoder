r, c = gets.chomp.split(" ").map(&:to_i)
arr = []
2.times do
  arr << gets.chomp.split(" ").map(&:to_i)
end

puts arr[r-1][c-1]