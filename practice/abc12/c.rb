n = gets.chomp.to_i
sa = 2025 - n
count = 0
(1..9).each do |a|
  (1..9).each do |b|
    if sa == a * b
      puts "#{a} x #{b}"
    end
  end
end