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