s = gets.chomp.split("")

a_index = 2000000
z_index = 0
s.each_with_index do |ss, index|
  if ss == "A"
    a_index = [a_index, index].min
  end
end
s.each_with_index do |ss, index|
  if ss == "Z"
    z_index = [z_index, index].max
  end
end

puts z_index - a_index + 1