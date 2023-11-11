s = gets.chomp
ans = 1000000

(0...(s.size-2)).each do |i|
  x = (s[i] + s[i+1] + s[i+2]).to_i
  ans = [ans, (753 - x).abs].min
end

puts ans