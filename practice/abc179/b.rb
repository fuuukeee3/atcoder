n = gets.chomp.to_i
flg = false
con = 0
n.times do
  d1, d2 = gets.chomp.split(" ").map(&:to_i)
  if d1 == d2
    con += 1
  else
    con = 0
  end

  if con == 3
    flg = true
  end
end

puts flg ? "Yes" : "No"