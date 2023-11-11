h, w = gets.chomp.split(" ").map(&:to_i)
arr = []
h.times do
  arr << gets.chomp.split(" ").map(&:to_i)
end

results = []
w.times do |ww|
  results << []
  h.times do |hh|
    results[ww][hh] = arr[hh][ww]
  end
end

puts results.map { |r| r.join(" ") }.join("\n")