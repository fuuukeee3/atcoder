n = gets.chomp.to_i
s = gets.chomp.split("")
ans = []
(0...n - 1).each do |i|
  before = s[0..i]
  after = s[i + 1..]
  ans << (before & after).size
end

puts ans.max
