n, l = gets.chomp.split(" ").map(&:to_i)
before = (1..n).to_a.map { |a| l + a - 1 }.sort { |a, b| a.abs <=> b.abs }
puts before[1..-1].sum