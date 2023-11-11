n, m = gets.chomp.split(" ").map(&:to_i)
arr = []
m.times do
  arr << gets.chomp.split(" ").map(&:to_i)
end

min = 1000
(0..999).each do |i|
  is = i.to_s.split("")
  next if is.size != n

  count = 0
  arr.each do |a|
    s = a[0]
    c = a[1]

    if is[s - 1] == c.to_s
      count += 1
    end
  end

  if count == m
    min = [min, i].min
  end
end

if min == 1000
  puts -1
else
  puts min
end
