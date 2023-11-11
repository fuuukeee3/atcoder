s = gets.chomp.split("")
flg = false

if s.uniq.size == 1
  flg = true
end

flg2 = []
3.times do |i|
  next_number = s[i].to_i + 1
  next_number = 0 if next_number == 10

  if s[i+1].to_i == next_number
    flg2 << true
  end
end
flg = true if flg2.size == 3

puts flg ? "Weak" : "Strong"