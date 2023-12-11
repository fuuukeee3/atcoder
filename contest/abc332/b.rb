k, g, m = gets.chomp.split(" ").map(&:to_i)
gi = 0
mi = 0

k.times do
  if gi == g
    gi = 0
  elsif mi == 0
    mi = m
  else
    tmp = g - gi
    tmp2 = [tmp, mi].min
    gi += tmp2
    mi -= tmp2
  end
end

puts [gi, mi].join(" ")