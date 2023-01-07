t = gets.chomp.to_i

result = []
t.times do
  n = gets.chomp.to_i
  arr = gets.chomp.split(" ").map(&:to_i)
  result << arr.select { |a| a.odd? }.size
end

puts result.join("\n")
