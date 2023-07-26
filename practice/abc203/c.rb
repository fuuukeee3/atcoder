n, k = gets.chomp.split(" ").map(&:to_i)
hash = Hash.new { 0 }
n.times do
  a, b = gets.chomp.split(" ").map(&:to_i)
  hash[a] += b
end

now = 0
hash.sort.to_h.each do |key, value|
  if k < key
    now += k
    break
  end

  now = key
  k -= key - now
  k += value
end

puts k
