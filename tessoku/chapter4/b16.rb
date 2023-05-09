n = gets.chomp.to_i
h = gets.chomp.split(" ").map(&:to_i)
h.unshift(0)

dp = Array.new(n + 1)
dp[1] = 0
dp[2] = (h[1] - h[2]).abs

(3..n).each do |i|
  a = (h[i - 1] - h[i]).abs
  b = (h[i - 2] - h[i]).abs

  dp[i] = [dp[i - 1] + a, dp[i - 2] + b].min
end

puts dp[n]