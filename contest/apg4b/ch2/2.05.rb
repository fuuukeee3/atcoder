def sum(n)
  return 0 if n == 0
  n + sum(n - 1)
end

puts sum(2)
puts sum(3)
puts sum(10)

def sum_range(a, b)
  return a if a == b
  b + sum_range(a, b - 1)
end

puts sum_range(3, 6)
puts sum_range(0, 3)

def array_sum(array)
  return array.pop if array.size == 1
  array.pop + array_sum(array)
end

puts array_sum([0, 3, 9, 1, 5])
puts array_sum((0..100).to_a)

def divisor?(n, i)
  return false if i == n
  return true if n % i == 0
  divisor?(n, i + 1)
end

def prime?(n)
  return false if n == 1
  return true if n == 2
  !divisor?(n, 2)
end

puts prime?(1)
puts prime?(2)
puts prime?(12)
puts prime?(13)
puts prime?(57)

puts "##############"
