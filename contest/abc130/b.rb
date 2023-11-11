n, x = gets.chomp.split(" ").map(&:to_i)
arr = gets.chomp.split(" ").map(&:to_i)

results = [0]
total = 0
arr.each do |a|
  total += a
  results << total
end

p results.select { |a| a <= x }.size
