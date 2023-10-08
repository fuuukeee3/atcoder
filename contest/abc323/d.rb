n = gets.chomp.to_i
slimes = Hash.new { 0 }
n.times do |i|
  s, c = gets.chomp.split(" ").map(&:to_i)
  slimes[s] = c
end

keys = slimes.keys.sort

keys.each do |key|
  div, mod = slimes[key].divmod(2)
  slimes[key] = mod
  if div >= 1
    keys << key * 2
    slimes[key * 2] += div
  end
end

puts slimes.values.sum
