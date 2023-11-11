n = gets.chomp.to_i

case n
when 0..999
  puts n
when 1000..9999
  puts n.floor(-1)
when 10000..99999
  puts n.floor(-2)
when 100000..999999
  puts n.floor(-3)
when 1000000..9999999
  puts n.floor(-4)
when 10000000..99999999
  puts n.floor(-5)
when 100000000..999999999
  puts n.floor(-6)
end