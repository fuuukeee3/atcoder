# gridから上下左右斜めの8方向に走査して取得して値を取得する
# @param [Array<String|Integer>] grid 走査対象grid
# @param [Array<Integer>] current 現在位置 ex) [0,1]
# @param [Integer] size 取得サイズ
# @return [Hash]
def get_all_directions_for_grid(grid, current, size)
  hash = {
    l: [],
    r: [],
    u: [],
    d: [],
  }

  h = grid.size
  w = grid[0].size

  # 左
  hash[:l] << grid[current[0]][current[1]]
  j = current[1] - 1
  (size - 1).times do
    break if j < 0

    hash[:l] << grid[current[0]][j]
    j -= 1
  end

  # 右
  hash[:r] << grid[current[0]][current[1]]
  j = current[1] + 1
  (size - 1).times do
    break if j >= w

    hash[:r] << grid[current[0]][j]
    j += 1
  end

  # 上
  hash[:u] << grid[current[0]][current[1]]
  i = current[0] - 1
  (size - 1).times do
    break if i < 0

    hash[:u] << grid[i][current[1]]
    i -= 1
  end

  # 下
  hash[:d] << grid[current[0]][current[1]]
  i = current[0] + 1
  (size - 1).times do
    break if i >= h

    hash[:d] << grid[i][current[1]]
    i += 1
  end
  hash
end

n = gets.chomp.to_i
grid = []
n.times do
  grid << gets.chomp.split("")
end

points = []
players = []
n.times do |i1|
  n.times do |i2|
    next if grid[i1][i2] == "#"
    
    if grid[i1][i2] == "P"
      players << [i1, i2]
      next
    end

    point = 0
    point += 1 if i1.zero?
    point += 1 if i1 == n - 1
    point += 1 if i2.zero?
    point += 1 if i2.== n - 1

    around = get_all_directions_for_grid(grid, [i1, i2], 2)
    point += around.values.select {|a| a.size >= 2}.map {|a| a.last}.count {|a| a == "#"}

    if point >= 2
      points << [i1, i2]
    end
  end
end

# p points
# p players

nears = {p1: [], p2: []}
players.each_with_index do |player, i|
  points.each do |point|
    h = (player[0] - point[0]).abs
    w = (player[1] - point[1]).abs
    
    if i.zero?
      nears[:p1] << h + w
    else
      nears[:p2] << h + w
    end
  end
end

# p nears

players_h = (players[0][0] - players[1][0]).abs
players_w = (players[0][1] - players[1][1]).abs
players_sa = players_h + players_w

# p players_sa

results = []

nears.each do |k, v|
  next if v.size.zero?
  results << players_sa + v.min
end

if results.size.zero?
  puts -1
else
  puts results.min
end
