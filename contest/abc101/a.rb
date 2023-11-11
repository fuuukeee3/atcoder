s = gets.chomp.split("")
count = 0
s.each do |ss|
  if ss == "+"
    count += 1
  else
    count -= 1
  end
end

puts count