# 配列の要素のすべての組み合わせ
def arr_all_combination(arr)
  new_arr = []
  (1..arr.size).each do |i|
    arr.combination(i) do |c|
      new_arr << c
    end
  end
  new_arr
end

# 2次元配列全探索
# i = 0
# while i < n
#   j = 0
#   while j < nn
#     j += 1
#   end
#   i += 1
# end

# 階乗
def factorial(n)
  return 1 if n == 0
  n * factorial(n - 1)
end

# 隣接マス差分表
# 0:下 1:右 2:上 3:左 4:右下 5:右上 6:左下 7:左上
# dh = [1, 0, -1, 0, 1, -1, -1, 1]
# dw = [0, 1, 0, -1, 1, 1, -1, -1]

# 0:下 1:右 2:上 3:左
# dh.zip(dw) => [[1,0], [0,1], [-1, 0], [0, -1]]
# dh = [1, 0, -1, 0,]
# dw = [0, 1, 0, -1]

# 区間分割/連長圧縮
# s = "AAABBBBBAACCDDA"
# i = 0
# while i < s.size
#   j = i
#   while j < s.size && s[i] == s[j]
#     j += 1
#   end
#   p [s[i], j - i]
#   i = j
# end

# 無向グラフ
# n, m = gets.chomp.split(" ").map(&:to_i)
# graph = Array.new(n) { [] }
# m.times do
#   a, b = gets.chomp.split(" ").map(&:to_i)
#   a -= 1
#   b -= 1
#   graph[a] << b
#   graph[b] << a
# end

# bit全探索
# 選択する/しないの2パタンに分類できる時
# サイズ n の重複順列をすべて生成
# [0, 1].repeated_permutation(n).to_a.each do |bit|
#   bit.each_with_index do |b, index|
#     # 選択された場合の処理
#     if b == 1
#     end
#   end
# end

# 約数の個数を返す
# https://qiita.com/norioc/items/5c270ad6ff5d22d1efd0
def number_divisors(n)
  return 1 if n == 1
  Prime.prime_division(n).map {|p, e| e + 1 }.inject(:*)
end

# 2次元Gridの回転、4回で1周する
4.times do
  new_a = []
  (0...n).each do |i|
    arr = []
    (0...n).each do |j|
      arr << a[n - j - 1][i]
    end
    new_a << arr
  end
  a = new_a # 回転済みのGridを回転するので元Gridを上書き
end

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

# 累積和
def prefix_sum(arr)
  sums = [0]
  arr.each_with_index do |a, i|
    sums << a + sums[i]
  end

  sums
end