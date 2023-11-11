def saiten(arr)
  correct_count = 0
  wrong_count = 0

  (0..8).each do |i|
    (0..8).each do |j|
      if (i + 1) * (j + 1) == arr[i][j]
        correct_count += 1
      else
        wrong_count += 1
      end
    end
  end
  [correct_count, wrong_count]
end

a = []
9.times do |i|
  a << gets.chomp.split(" ").map(&:to_i)
end

correct_count, wrong_count = saiten(a)

(1..9).each do |i|
  arr = []
  (1..9).each do |j|
    arr << i * j
  end
  puts arr.join(" ")
end

puts correct_count
puts wrong_count
