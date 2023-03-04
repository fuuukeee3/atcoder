def temp(n)
  count = 0
  (1..n).each do |i|
    if n % i == 0
      count += 1
    end
  end
  count
end

n = gets.chomp.to_i

arr = Array.new(n) { 0 }
count = 0
(1...n).each do |i|
  left = i
  right = n - i

  if arr[left] == 0
    arr[left] = temp(left)
  end
  if arr[right] == 0
    arr[right] = temp(right)
  end
  count += arr[left] * arr[right]
end

puts count
