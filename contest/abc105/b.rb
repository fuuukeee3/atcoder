n = gets.chomp.to_i

(0..25).each do |i|
  (0..14).each do |j|
    if (i * 4) + (j * 7) == n
      puts "Yes"
      return
    end
  end
end

puts "No"
