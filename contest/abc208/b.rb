p = gets.chomp.to_i

def factorial(n)
  return 1 if n == 0
  n * factorial(n - 1)
end

hash = {}
(1..10).map do |a|
  hash[factorial(a)] = 100
end

keys = hash.keys.reverse

count = 0
keys.each do |key|
  if key <= p
    num = p / key
    count += num
    p = p - (key * num)
  end

  if p.zero?
    break
  end
end

puts count
