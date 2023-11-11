n = gets.chomp.to_i
arr = gets.chomp.split(" ").map(&:to_i)
count = 0
arr.each.with_index do |a, i|
  count += 1 unless a == i + 1
end

puts count <= 2 ? "YES" : "NO"