require "prime"
t = gets.chomp.to_i

results = []
t.times do
  n = gets.chomp.to_i
  factors = n.prime_division.sort { |a, b| b[1] <=> a[1] }
  results << [factors[0][0], factors[1][0]]
end

results.each do |result|
  puts result.join(" ")
end
