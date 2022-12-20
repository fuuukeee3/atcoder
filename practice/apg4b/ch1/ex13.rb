n = gets.chomp.to_i
arr = gets.chomp.split(" ").map(&:to_i)

avg = (arr.sum / arr.size).floor

arr.each { |a| puts (a - avg).abs }
