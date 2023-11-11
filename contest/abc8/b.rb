n = gets.chomp.to_i
hash = Hash.new { 0 }
n.times do
  s = gets.chomp
  hash[s] += 1
end

puts hash.sort_by { |k, v| v }[-1][0]