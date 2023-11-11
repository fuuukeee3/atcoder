n = gets.chomp.to_i
hash = Hash.new { 0 }
n.times { hash[gets.chomp] += 1 }
puts hash.max { |a, b| a[1] <=> b[1] }[0]