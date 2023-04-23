s = gets.chomp.split("")
price = 700
s.each do |ss|
  if ss == "o"
    price += 100
  end
end
puts price