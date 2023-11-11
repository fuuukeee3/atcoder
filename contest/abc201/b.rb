n = gets.chomp.to_i
arr = []
n.times do
  s, t = gets.chomp.split(" ")
  arr << [s, t.to_i]
end

puts arr.sort { |a, b| b[1] <=> a[1] }[1][0]
