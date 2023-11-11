n = gets.chomp.to_i
arr = gets.chomp.split(" ").map(&:to_i)
sum = 0
arr.each do |a|
  sum += Rational(1, a)
end
puts 1.0 / sum
