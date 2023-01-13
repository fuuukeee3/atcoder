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
# dh = [1, 0, -1, 0,]
# dw = [0, 1, 0, -1]
