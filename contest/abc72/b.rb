s = gets.chomp.split("")

s.each_with_index do |ss, index|
  next if index.odd?
  print ss
end
puts