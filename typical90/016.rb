n = gets.chomp.to_i
a, b, c = gets.chomp.split(" ").map(&:to_i)

min = 10000
(0..9999).each do |aa|
  (0..9999).each do |bb|
    tmp = n - (a * aa + b * bb)
    next if tmp < 0

    cc, mod = tmp.divmod(c)
    if mod.zero?
      min = [min, aa + bb + cc].min
    end
  end
end

puts min