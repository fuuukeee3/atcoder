x, y = gets.chomp.split(" ").map(&:to_i)

flg = false
(0..x).each do |i|
  j = x - i

  if y == 2 * i + 4 * j
    flg = true
  end
end
puts flg ? "Yes" : "No"