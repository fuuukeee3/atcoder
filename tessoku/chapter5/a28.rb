n = gets.chomp.to_i
sum = 0
n.times do
  t, a = gets.chomp.split(" ")
  case t
  when '+'
    sum += a.to_i
  when '-'
    sum -= a.to_i
  when '*'
    sum *= a.to_i
  end
  sum = sum % 10000
  puts sum
end
