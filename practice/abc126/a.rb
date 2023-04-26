n, k = gets.chomp.split(" ").map(&:to_i)
s = gets.chomp.split("")

s.each_with_index do |ss, index|
  ss.downcase! if index == k - 1
  print ss
end

puts
