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
