n = gets.chomp.to_i
arr = gets.chomp.split(" ").map(&:to_i)

hash = Hash.new { 0 }
arr.each do |a|
  hash[a] += 1
end

count = 0
hash.each do |k, v|
  next if k == v

  if k > v
    count += v
    next
  end

  count += v - k
end

puts count
