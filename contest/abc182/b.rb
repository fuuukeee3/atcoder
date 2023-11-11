n = gets.chomp.to_i
arr = gets.chomp.split(" ").map(&:to_i)

results = Array.new(1001) {0}
(2..1000).each do |i|
  arr.each do |a|
    if a % i == 0
      results[i] += 1
    end
  end
end

p results.find_index(results.max)