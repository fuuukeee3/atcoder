n = gets.chomp.to_i
yaku = []
(1..9).each do |i|
  if n % i == 0
    b = n / i
    yaku << [i, b]
  end
end

ans = []

(0..n).each do |i|
  tmp = []
  yaku.each do |y|
    tmp << y[0] if i % y[1] == 0
  end

  if tmp.empty?
    ans << '-'
  else
    ans << tmp.min.to_s
  end
end

puts ans.join("")