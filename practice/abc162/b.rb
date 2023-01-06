n = gets.chomp.to_i

result = 0
(0..n).each do |nn|
  next if nn % 15 == 0
  next if nn % 5 == 0
  next if nn % 3 == 0

  result += nn
end
puts result
