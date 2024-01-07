n = gets.chomp.to_i

(0..n).each do |x|
  (0..n).each do |y|
    (0..n).each do |z|
      if x + y + z <= n
        puts [x, y, z].join(" ")
      end
    end
  end
end
