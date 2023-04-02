x, n = gets.chomp.split(" ").map(&:to_i)
arr = gets.chomp.split(" ").map(&:to_i)
results = Array.new(101) { false }

arr.each do |a|
  results[a] = true
end

i = x.dup
under = 1000
loop do
  unless results[i]
    under = i
    break
  end

  i -= 1
end

i = x.dup
top = 0
loop do
  unless results[i]
    top = i
    break
  end

  i += 1
end

u = x - under
t = top - x
if u == t
  puts under
elsif u > t
  puts top
else
  puts under
end