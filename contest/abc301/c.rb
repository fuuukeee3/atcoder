s = gets.chomp.split("")
t = gets.chomp.split("")

s_hash = Hash.new { 0 }
t_hash = Hash.new { 0 }

s.each do |ss|
  s_hash[ss] += 1
end

t.each do |tt|
  t_hash[tt] += 1
end

sa_hash = Hash.new { 0 }
s_hash.each do |k, v|
  next if v == t_hash[k] || k == "@"

  if t_hash[k].nil?
    sa_hash[k] += v
    next
  end

  if v > t_hash[k]
    sa_hash[k] += v - t_hash[k]
    next
  else
    sa_hash[k] -= t_hash[k] - v
    next
  end
end

t_hash.each do |k, v|
  next if v == s_hash[k] || k == "@"
  next if sa_hash.has_key?(k)

  if s_hash[k].nil?
    sa_hash[k] -= v
    next
  end

  if v > s_hash[k]
    sa_hash[k] -= v - s_hash[k]
    next
  else
    sa_hash[k] +=  s_hash[k] - v
    next
  end
end
# p s_hash
# p t_hash
# p sa_hash

if (sa_hash.keys - %w[a t c o d e r @]).size > 0
  puts "No"
  exit
end

plus = 0
sa_hash.each do |k, v|
  plus += 1 if v > 0
end
minus = 0
sa_hash.each do |k, v|
  minus += 1 if v < 0
end
# p [plus, t_hash["@"]]
# p [minus, s_hash["@"]]

if s_hash["@"] >= minus && t_hash["@"] >= plus
  puts "Yes"
else
  puts "No"
end