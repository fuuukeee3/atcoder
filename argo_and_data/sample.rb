n = 7
arr = [2, 9, 4, 5, 1, 6, 10]

dp = Array.new(n) { 10000000000 }
dp[0] = 0

(0...n).each do |i|
  if i + 1 < n
    p1 = dp[i] + (arr[i] - arr[i+1]).abs
    dp[i+1] = [dp[i+1], p1].min
  end

  if i + 2 < n
    p2 = dp[i] + (arr[i] - arr[i+2]).abs
    dp[i+2] = [dp[i+2], p2].min
  end
end

p dp
