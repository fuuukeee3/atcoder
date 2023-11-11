n = gets.chomp.to_i
arr = []
n.times do
  arr << gets.chomp.to_i
end

count = 1
light = 0
loop do
  if arr[light] == 2
    break
  end

  light = arr[light] - 1
  count += 1

  if count > 100010
    count = -1
    break
  end
end

puts count
