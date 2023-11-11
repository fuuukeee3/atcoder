n = gets.chomp.to_i
arr = gets.chomp.split(" ").map(&:to_i)

results = arr.map do |a|
  if a <= 10
    0
  else
    a - 10
  end
end

puts results.sum