n = gets.chomp.to_i
i = 0

a = []
while i <= 100
  a << i
  i += 5
end

min = 999
min_a = nil
a.each do |aa|
  if min >= (aa - n).abs
    min = (aa -n).abs
    min_a = aa
  end

end

puts min_a