s = gets.chomp
sa = 0
ea = 0

(0...(s.size)).each do |i|
  break if s[i] != 'a'
  sa += 1
end

(s.size - 1).downto(0) do |i|
  break if s[i] != 'a'
  ea += 1
end

if sa == ea
  puts s == s.reverse ? "Yes" : "No"
elsif sa > ea
  puts "No"
else
  ss = 'a' * (ea - sa) + s
  puts ss == ss.reverse ? "Yes" : "No"
end
