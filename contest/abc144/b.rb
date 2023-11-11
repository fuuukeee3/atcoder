n = gets.chomp.to_i

(1..9).each do |i|
  (1..9).each do |j|
    if i * j == n
      puts "Yes"
      return
    end
  end
end

puts "No"
