n = gets.chomp.to_i
arr = gets.chomp.split(" ").map(&:to_i)
temp = Array.new(n + 1) { 0 }
results = {}

arr.each_with_index do |a, index|
  temp[a] += 1

  if temp[a] == 2
    results[a] = index + 1
  end
end

puts results.sort_by { |_, v| v }.map { |m| m[0] }.join(" ")