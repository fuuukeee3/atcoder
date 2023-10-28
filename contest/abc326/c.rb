n, m = gets.chomp.split(" ").map(&:to_i)
presents = gets.chomp.split(" ").map(&:to_i)
presents.sort!
presents << 9000000000000

results = []
presents.each_with_index do |pp, i|
  next if i == n
  index = presents.bsearch_index {|x| x >= pp + m}
  results << index - i
end

puts results.max