k, s = gets.chomp.split(" ").map(&:to_i)

count = 0
(0..k).each do |x|
  if x == s
    count += 1
    break
  end
  (0..k).each do |y|
    if x + y == s
      count += 1
      break
    end

    z = s - (x + y)
    if z <= k
      count += 1
    end
  end
end

puts count
