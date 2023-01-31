n = gets.chomp.to_i

bt, bx, by = 0, 0, 0
flg = true
n.times do
  t, x, y = gets.chomp.split(" ").map(&:to_i)
  tt, xx, yy = t - bt, (x - bx).abs, (y - by).abs

  if tt < xx + yy
    flg = false
    next
  end

  if tt % 2 != (xx + yy) % 2
    flg = false
    next
  end

  bt, bx, by = t, x, y
end

puts flg ? "Yes" : "No"
