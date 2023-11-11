s = gets.chomp.split("")
s.each_with_index do |ss, index|
  if index.zero?
    print ss.upcase
  else
    print ss.downcase
  end
end
puts