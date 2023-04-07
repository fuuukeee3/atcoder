n = gets.chomp.to_i
arr = gets.chomp.split(" ").map(&:to_i)

hash = {}
arr.each_with_index do |a, index|
  hash[index + 1] = a
end

puts hash.sort { |a, b| a[1] <=> b[1] }.map { |a| a[0] }.join(" ")