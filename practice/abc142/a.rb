n = gets.chomp.to_i
puts (1..n).to_a.count { |a| a.odd? } / n.to_f