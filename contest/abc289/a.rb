s = gets.chomp.split("")
str = s.map { | ss |
  if ss == '1'
    '0'
  else
    '1'
  end
}

puts str.join("")