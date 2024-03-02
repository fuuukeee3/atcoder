a, b = gets.chomp.split(" ").map(&:to_i)
(0..9).each do |i|
  if i != a + b
    puts i
    break
  end
end