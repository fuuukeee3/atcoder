def factorial(number)
  (1..number).inject(1, :*)
end

n = gets.chomp.to_i
a = gets.chomp.split(" ").map(&:to_i)

hash = Hash.new { 0 }
a.each do |aa|
  hash[aa] += 1
end

count = 0
hash.each do |k, v|
  count += factorial(v) / (6 * factorial(v - 3))
end

puts count