n = gets.chomp.to_i
arr = []
n.times do
  w, x = gets.chomp.split(" ").map(&:to_i)
  arr << [w, x]
end

results = []
(0..23).each do |i|
  sum = 0
  arr.each do |a|
    if (i + a[1]) % 24 <= 17 && (i + a[1]) % 24 >= 9
      sum += a[0]
    end
  end
  results << sum
end

puts results.max