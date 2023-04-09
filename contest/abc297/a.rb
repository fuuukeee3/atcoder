n, d = gets.chomp.split(" ").map(&:to_i)
arr = gets.chomp.split(" ").map(&:to_i)
results = -1
(1...n).each do |i|
  if arr[i] - arr[i-1] <= d
    results = arr[i]
    break
  end
end

puts results