n, k = gets.chomp.split(" ").map(&:to_i)
results = Array.new(n) { false }
k.times do
  d = gets.chomp.to_i
  arr = gets.chomp.split(" ").map(&:to_i)
  arr.each do |a|
    results[a - 1] = true
  end
end

puts results.count { |r| !r }