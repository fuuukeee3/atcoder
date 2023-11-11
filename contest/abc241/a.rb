arr = gets.chomp.split(" ").map(&:to_i)
current = 0
3.times do
  current = arr[current]
end
puts current