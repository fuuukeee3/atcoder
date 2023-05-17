n, a, b = gets.chomp.split(" ").map(&:to_i)
dp = Array.new(n + 1) { false }

(0..n).each do |i|
  if i >= a && !dp[i-a]
    dp[i] = true
  elsif i >= b && !dp[i-b]
    dp[i] = true
  else
    dp[i] = false
  end
end

if dp[n]
  puts "First"
else
  puts "Second"
end