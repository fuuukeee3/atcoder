a, b = gets.chomp.split(" ").map(&:to_i)

count = 0
(a..b).each do |a|
  if a.to_s == a.to_s.reverse
    count += 1
  end
end

puts count
