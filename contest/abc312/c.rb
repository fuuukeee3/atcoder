n, m = gets.chomp.split(" ").map(&:to_i)
a = gets.chomp.split(" ").map(&:to_i)
b = gets.chomp.split(" ").map(&:to_i)

ans = (0..10 ** 10).bsearch do |i|
  sale = a.count { |v| v <= i }
  buy = b.count { |v| v >= i }
  sale >= buy
end
puts ans