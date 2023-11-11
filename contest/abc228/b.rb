n, x = gets.chomp.split(" ").map(&:to_i)
arr = gets.chomp.split(" ").map(&:to_i)

results = Array.new(n) { false }
count = 0
loop do
  results[x-1] = true
  x = arr[x-1]
  count += 1

  break if results[x-1]
end

puts count