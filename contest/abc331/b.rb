n, s, m, l = gets.chomp.split(" ").map(&:to_i)

results = []
(0..100).each do |ss|
  (0..100).each do |mm|
    (0..100).each do |ll|
      if ss * 6 + mm * 8 + ll * 12 >= n
        results << ss * s + mm * m + ll * l
      end
    end
  end
end

puts results.min