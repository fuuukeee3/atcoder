n, t = gets.chomp.split(" ").map(&:to_i)
arr = Array.new(n) { 0 }
hash = { 0 => n }

t.times do
  a, b = gets.chomp.split(" ").map(&:to_i)
  before = arr[a - 1]
  arr[a - 1] += b

  if hash.key?(arr[a - 1])
    hash[arr[a - 1]] += 1
  else
    hash[arr[a - 1]] = 1
  end

  hash[before] -= 1
  if hash[before] == 0
    hash.delete(before)
  end
  puts hash.size
end

