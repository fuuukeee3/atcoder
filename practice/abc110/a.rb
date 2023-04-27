a, b, c = gets.chomp.split(" ").map(&:to_i)
aa = [a, b, c].sort
puts (aa[2].to_s + aa[1].to_s).to_i + aa[0]