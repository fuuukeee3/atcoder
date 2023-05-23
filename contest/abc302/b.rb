def get_all_directions_for_grid(grid, current, size)
  hash = {
    l: [],
    r: [],
    u: [],
    d: [],
    lu: [],
    ld: [],
    ru: [],
    rd: [],
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

  # 左上
  hash[:lu] << grid[current[0]][current[1]]
  i = current[0] - 1
  j = current[1] - 1
  (size - 1).times do
    break if i < 0 || j < 0

    hash[:lu] << grid[i][j]
    i -= 1
    j -= 1
  end

  # 左下
  hash[:ld] << grid[current[0]][current[1]]
  i = current[0] + 1
  j = current[1] - 1
  (size - 1).times do
    break if i >= h || j < 0

    hash[:ld] << grid[i][j]
    i += 1
    j -= 1
  end

  # 右上
  hash[:ru] << grid[current[0]][current[1]]
  i = current[0] - 1
  j = current[1] + 1
  (size - 1).times do
    break if i < 0 || j >= w

    hash[:ru] << grid[i][j]
    i -= 1
    j += 1
  end

  # 右下
  hash[:rd] << grid[current[0]][current[1]]
  i = current[0] + 1
  j = current[1] + 1
  (size - 1).times do
    break if i >= h || j >= w

    hash[:rd] << grid[i][j]
    i += 1
    j += 1
  end

  hash
end

h, w = gets.chomp.split(" ").map(&:to_i)
s = []
h.times do
  s << gets.chomp.split("")
end

h.times do |i|
  w.times do |j|
    next if s[i][j] != "s"

    hash = get_all_directions_for_grid(s, [i, j], 5)
    key = nil
    hash.each do |k, v|
      key = k if "snuke" == v.join("")
    end

    case key
    when :l
      5.times do |ii|
        puts "#{i + 1} #{j - ii + 1}"
      end
    when :r
      5.times do |ii|
        puts "#{i + 1} #{j + ii + 1}"
      end
    when :u
      5.times do |ii|
        puts "#{i - ii + 1} #{j + 1}"
      end
    when :d
      5.times do |ii|
        puts "#{i + ii + 1} #{j + 1}"
      end
    when :lu
      5.times do |ii|
        puts "#{i - ii + 1} #{j - ii + 1}"
      end
    when :ld
      5.times do |ii|
        puts "#{i + ii + 1} #{j - ii + 1}"
      end
    when :ru
      5.times do |ii|
        puts "#{i - ii + 1} #{j + ii + 1}"
      end
    when :rd
      5.times do |ii|
        puts "#{i + ii + 1} #{j + ii + 1}"
      end
    end
  end
end