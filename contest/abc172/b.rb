s = gets.chomp
t = gets.chomp
count = 0
s.split("").each_with_index do |ss, index|
  count += 1 if ss != t[index]
end
puts count
