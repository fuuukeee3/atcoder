def dfs(grid, visited, position, num, snuke, h, w)
  return if visited[position[0]][position[1]]
  if position == [h - 1, w - 1]
    $flg = true
  end

  # 訪れた箇所はtrue
  visited[position[0]][position[1]] = true
  # if grid[position[0]][position[1]] == snuke[num % 5]
  #   visited[position[0]][position[1]] = true
  # end

  nears = get_all_directions_for_grid(grid, position, 2)
  nears.each do |k, v|
    next if v.size == 1

    if v[1] == snuke[(num + 1) % 5]
      case k
      when :l
        next_position = [position[0], position[1] - 1]
      when :r
        next_position = [position[0], position[1] + 1]
      when :u
        next_position = [position[0] - 1, position[1]]
      when :d
        next_position = [position[0] + 1, position[1]]
      end

      if next_position == [h - 1, w - 1]
        $flg = true
      end

      dfs(grid, visited, next_position, num + 1, snuke, h, w)
    end
  end
end

# gridから上下左右の4方向に走査して取得して値を取得する
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

h, w = gets.chomp.split(" ").map(&:to_i)
grid = []
h.times do
  grid << gets.chomp.split("")
end

$flg = false
snuke = "snuke"
visited = Array.new(h) { Array.new(w) { false } }

dfs(grid, visited, [0, 0], 0, snuke, h, w)

puts $flg ? "Yes" : "No"