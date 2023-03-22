x, y = gets.chomp.split(" ").map(&:to_i)

if [x, y].uniq.size == 1
  puts x
else
  a = [0, 1, 2] - [x, y]
  puts a[0]
end