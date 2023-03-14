n, m = gets.chomp.split(" ").map(&:to_i)
a = gets.chomp.split(" ").map(&:to_i)
b = gets.chomp.split(" ").map(&:to_i)

a.sort!
b.sort!
ans = 10000000001

acount = 0
bcount = 0
while acount < n && bcount < m
  ans = [ans, (a[acount] - b[bcount]).abs].min
  if a[acount] > b[bcount]
    bcount += 1
  else
    acount += 1
  end
end

puts ans