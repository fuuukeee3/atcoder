r, d, x = gets.chomp.split(" ").map(&:to_i)

before = x
(1..10).each do |i|
  current = r * before - d
  puts current
  before = current
end
