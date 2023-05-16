n = gets.chomp.to_i
fibo = Array.new(n + 1) { 0 }
fibo[1] = 1
fibo[2] = 1

(3..n).each do |i|
  fibo[i] = (fibo[i - 1] + fibo[i - 2]) % 1000000007
end

puts fibo[n] % 1000000007