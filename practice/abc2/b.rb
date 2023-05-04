w = gets.chomp.split("")

arr = %w[a i u e o]
w.each do |ww|
  print ww unless arr.include?(ww)
end
puts