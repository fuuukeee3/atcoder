h, w, x, y = gets.chomp.split(" ").map(&:to_i)
arr = []
h.times do
  arr << gets.chomp.split("")
end

count = 0

# 左方向
current = [x - 1, y - 1]
loop do
  break if current[1] < 0 || arr[current[0]][current[1]] == '#'
  count += 1 if arr[current[0]][current[1]] == '.'

  current[1] -= 1
end

# 右方向
current = [x - 1, y - 1]
loop do
  break if current[1] >= w || arr[current[0]][current[1]] == '#'
  count += 1 if arr[current[0]][current[1]] == '.'

  current[1] += 1
end

# 上方向
current = [x - 1, y - 1]
loop do
  break if current[0] < 0 || arr[current[0]][current[1]] == '#'
  count += 1 if arr[current[0]][current[1]] == '.'

  current[0] -= 1
end

# 下方向
current = [x - 1, y - 1]
loop do
  break if current[0] >= h || arr[current[0]][current[1]] == '#'
  count += 1 if arr[current[0]][current[1]] == '.'

  current[0] += 1
end

puts count - 3