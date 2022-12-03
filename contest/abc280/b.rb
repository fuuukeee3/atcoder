# n = gets.chomp.to_i
# arr = gets.chomp.split(" ").map(&:to_i)

n = gets.chomp.to_i
arr = gets.chomp.split(" ").map(&:to_i)

before = 0
result = []
arr.each do |a|
  result << a - before
  before = a
end

puts result.join(" ")
