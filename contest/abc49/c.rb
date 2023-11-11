s = gets.chomp
n = s.size

dp = Array.new(n) { false }
dp[0] = true

(0..n).each do |i|
  dp[i] = true if i >= 5 && dp[i - 5] && s[i - 5...i] == "erase"
  dp[i] = true if i >= 6 && dp[i - 6] && s[i - 6...i] == "eraser"
  dp[i] = true if i >= 5 && dp[i - 5] && s[i - 5...i] == "dream"
  dp[i] = true if i >= 5 && dp[i - 7] && s[i - 7...i] == "dreamer"
  p dp
end

puts dp[n] ? "Yes" : "No"