s = gets.chomp.split("")
size = s.size / 2
(1..size).each do |i|
  ii = i * 2 - 1
  jj = i * 2
  s[ii - 1], s[jj - 1] = s[jj - 1], s[ii - 1]
end

puts s.join("")