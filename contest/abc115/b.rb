n = gets.chomp.to_i
arr = []
n.times do
  arr << gets.chomp.to_i
end

sum = 0
arr.sort.each_with_index do |a, index|
  if index == n- 1
    sum += a / 2
  else
    sum += a
  end
end

puts sum