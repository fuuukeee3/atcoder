n = gets.chomp.to_i
arr = gets.chomp.split(" ").map(&:to_i)

results = []
(1..100).each do |i|
  results << arr.sum do |a|
    (a - i).abs ** 2
  end
end

puts results.min