s, t = gets.chomp.split(" ").map(&:to_i)

count = 0
(0..100).each do |a|
  (0..100).each do |b|
    (0..100).each do |c|
      if a + b + c <= s && a * b * c <= t
        count += 1
      end
    end
  end
end

puts count
