n, m = gets.chomp.split(" ").map(&:to_i)
s = gets.chomp.split("")
c = gets.chomp.split(" ").map(&:to_i)

hash = Hash.new
s.each_with_index do |ss, i|
  (hash[c[i]] ||= []) << ss
end

hash.each do |k, v|
  v.unshift(v.pop)
end

ans = ""
c.each do |cc|
  ans += hash[cc].shift
end

puts ans
