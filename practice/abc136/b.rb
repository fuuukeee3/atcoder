n = gets.chomp.to_i
count = (1..n).count do |i|
  i.to_s.size % 2 == 1
end
puts count