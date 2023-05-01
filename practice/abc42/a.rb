a, b, c = gets.chomp.split(" ").map(&:to_i)
hash = Hash.new {0}
[a,b,c].each do |i|
  hash[i] += 1
end

if hash[5] == 2 && hash[7] == 1
  puts "YES"
else
  puts "NO"
end