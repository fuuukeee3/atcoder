a = gets.chomp.to_i
b = gets.chomp.to_i
n = gets.chomp.to_i
(n..200000).each do |i|
  if i % a == 0 && i % b == 0
    puts i
    break
  end
end