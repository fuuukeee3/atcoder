n = gets.chomp.to_i
d, x = gets.chomp.split(" ").map(&:to_i)
eat_total = []
n.times do
  a = gets.chomp.to_i

  eat = []
  i = 0
  loop do
    break if i >= d

    eat << i + 1
    i += a
  end
  eat_total << eat
end

puts eat_total.sum { |e| e.size } + x