s = gets.chomp

as = s.split("")
ns = []
as.each do |ss|
  ns.unshift(ss)
end

count = 0
(0...(as.size)).each do |i|
  count += 1 if as[i] != ns[i]
end

puts count / 2
