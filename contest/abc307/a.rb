n = gets.chomp.to_i
arr = gets.chomp.split(" ").map(&:to_i)
result = []
arr.each_slice(7) do |a|
  result << a.sum
end

puts result.join(" ")