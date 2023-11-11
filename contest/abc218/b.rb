arr = gets.chomp.split(" ").map(&:to_i)
puts arr.map { |a| (a + 96).chr }.join("")
