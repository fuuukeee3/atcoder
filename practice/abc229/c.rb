n, w = gets.chomp.split(" ").map(&:to_i)
hash = Hash.new { 0 }
n.times do
  a, b = gets.chomp.split(" ").map(&:to_i)
  hash[a] += b
end

cheese = hash.sort { |a, b| b[0] <=> a[0] }.to_h

deli = 0
cheese.each do |k, v|
  break if w <= 0

  if v >= w
    deli += k * w
    break
  else
    deli += k * v
    w -= v
  end
end

puts deli