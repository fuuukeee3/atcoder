n, m = gets.chomp.split(" ").map(&:to_i)
(1..m).to_a.combination(n).each do |a|
  puts a.join(" ")
end
