# 答えがx以下 => true、xより大きい=> false
def check?(x, n, k, arr)
  sum = 0
  (0...n).each do |i|
    sum += x / arr[i]
  end

  sum >= k
end

n, k = gets.chomp.split(" ").map(&:to_i)
arr = gets.chomp.split(" ").map(&:to_i)

# 解について二部探索
# 解の範囲は1 ~ 1,000,000,000
# mid秒の結果はkより大きいか小さいか、で範囲を絞り込んでいく
left = 0
right = 1000000000

loop do
  break if left >= right

  mid = (left + right) / 2
  answer = check?(mid, n, k, arr)
  if answer
    right = mid
  else
    left = mid + 1
  end
end

puts left