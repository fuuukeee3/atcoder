n = gets.chomp.to_i
a = gets.chomp.split(" ").map(&:to_i)
b = gets.chomp.split(" ").map(&:to_i)

a.unshift(0)
a.unshift(0)
b.unshift(0)
b.unshift(0)
b.unshift(0)

dp = Array.new(n+1)
dp[1] = 0
dp[2] = a[2]

(3..n).each do |i|
  aa = dp[i - 1] + a[i]
  bb = dp[i - 2] + b[i]
  dp[i] = [aa, bb].min
end

answer = []
i = n
loop do
  answer << i
  break if i == 1

  if dp[i - 1] + a[i] == dp[i]
    i -= 1
  else
    i -= 2
  end
end

puts answer.size
puts answer.reverse.join(" ")