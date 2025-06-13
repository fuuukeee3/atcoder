n = gets.chomp.to_i
arr = gets.chomp.split(" ").map(&:to_i)

ans = 0
(0..n).each do |i|
  count = 0
  arr.each do |a|
    count += 1 if i <= a
  end

  ans = i if count >= i
end

puts ans
