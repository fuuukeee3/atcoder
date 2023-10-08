n = gets.chomp.to_i
results = {}

n.times do |i|
  results[i] = 0

  s = gets.chomp.split("")
  s.each_with_index do |ss|
    if ss == "o"
      results[i] += 1
    end
  end
end

puts results.sort_by { |key, value| [-value, key] }.to_h.keys.map { |a| a + 1 }.join(" ")
