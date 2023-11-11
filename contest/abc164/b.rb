a, b, c, d = gets.chomp.split(" ").map(&:to_i)
flg = true
loop do
  break if a <= 0 || c <= 0

  if flg
    c -= b
  else
    a -= d
  end

  flg = !flg
end

puts a > c ? "Yes" : "No"
