n, k = gets.chomp.split(" ").map(&:to_i)
arr = []
n.times do
  s = gets.chomp
  arr << s
end

puts arr[0...k].sort.join("\n")
