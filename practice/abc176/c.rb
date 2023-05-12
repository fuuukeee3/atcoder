n = gets.chomp.to_i
a = gets.chomp.split(" ").map(&:to_i)

sum = 0
new_a = []
a.each_with_index do |aa, index|
  if index == 0
    new_a << aa
    next
  end

  sa = aa - new_a[index - 1]
  if sa >= 0
    new_a << aa
  else
    sum += sa.abs
    new_a << aa + sa.abs
  end
end

puts sum