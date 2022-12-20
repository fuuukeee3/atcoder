n, m = gets.chomp.split(" ").map(&:to_i)
results = Array.new(n) { Array.new(n) { "-" } }
(0...m).each do |i|
  a, b = gets.chomp.split(" ").map(&:to_i)
  results[a - 1][b - 1] = "o"
  results[b - 1][a - 1] = "x"
end

results.each do |r|
  puts r.join(" ")
end
