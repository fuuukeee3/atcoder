require 'prime'

def number_divisors(n)
  return 1 if n == 1
  Prime.prime_division(n).map {|p, e| e + 1 }.inject(:*)
end

n = gets.chomp.to_i

arr = Array.new(n) { 0 }
count = 0
(1...n).each do |i|
  left = i
  right = n - i

  if arr[left] == 0
    arr[left] = number_divisors(left)
  end
  if arr[right] == 0
    arr[right] = number_divisors(right)
  end
  count += arr[left] * arr[right]
end

puts count
