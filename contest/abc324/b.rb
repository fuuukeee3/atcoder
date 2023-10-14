n = gets.chomp.to_i

flg = false
(0..100).each do |i|
  (0..100).each do |j|
    if 2 ** i * 3 ** j == n
      flg = true
    end
  end
end

puts flg ? "Yes" : "No"