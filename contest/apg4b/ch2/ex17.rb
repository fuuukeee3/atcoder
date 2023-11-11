n, s = gets.chomp.split(" ").map(&:to_i)
apples = gets.chomp.split(" ").map(&:to_i)
pineapples = gets.chomp.split(" ").map(&:to_i)

count = 0
apples.each do |a|
  pineapples.each do |p|
    count += 1 if a + p == s
  end
end

puts count
