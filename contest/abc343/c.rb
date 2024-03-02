n = gets.chomp.to_i
tmp = []
(1..1000000).each do |i|
  t = i ** 3
  next unless t.to_s == t.to_s.reverse

  tmp << t
end

ans = 1
tmp.each do |t|
  if n >= t
    ans = t
  end
end
puts ans