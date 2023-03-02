n = gets.chomp.to_i
arr = gets.chomp.split(" ").map(&:to_i)

count = 0
arr.each do |answer|
  flg = false
  (0..400).each do |a|
    (0..400).each do |b|
      tmp = 4 * a * b + 3 * a + 3 * b
      if tmp > 1000
        break
      end
      if answer == tmp
        flg = true
        break
      end
      break if flg
    end
  end

  count += 1 unless flg
end

puts count