# n = gets.chomp.to_i
# arr = gets.chomp.split(" ").map(&:to_i)

n = gets.chomp.to_i
arr = gets.chomp.split(" ").map(&:to_i)

before = 0
result = []
arr.each_with_index do |a, index|
  if index == 0
    result << a
  else
    result << a - before
  end
  before = a
end

puts result.join(" ")
