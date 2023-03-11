h, w = gets.chomp.split(" ").map(&:to_i)
arr = []
h.times do
  arr << gets.chomp.split(" ").map(&:to_i)
end

p arr