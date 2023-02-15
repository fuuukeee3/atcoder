n, x = gets.chomp.split(" ").map(&:to_i)
arr = gets.chomp.split(" ").map(&:to_i)

result = 0

if arr[0] > x
  result += arr[0] - x
  arr[0] = x
end

(0...(n-1)).each do |i|
  if arr[i] + arr[i + 1] > x
    result += arr[i] + arr[i + 1] - x
    arr[i + 1] = x - arr[i]
  end
end

puts result