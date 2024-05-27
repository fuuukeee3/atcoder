a, b = gets.chomp.split(" ").map(&:to_i)

tmp = [1,2,3] - [a, b]
if tmp.size == 1
  puts tmp[0]
else
  puts -1
end
