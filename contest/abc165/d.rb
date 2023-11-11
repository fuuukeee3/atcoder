a, b, n = gets.chomp.split(" ").map(&:to_i)

def func(a, b, x)
  (a * x / b).floor - (a * (x / b).floor)
end

puts func(a, b, [b - 1, n].min)
