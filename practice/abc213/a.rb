a, b = gets.chomp.split(" ").map(&:to_i)
(0..255).each do |i|
  if a ^ i == b
    puts i
    break
  end
end