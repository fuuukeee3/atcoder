s = gets.chomp.split("")

puts s.map { |ss|
  case ss
  when '6'
    '9'
  when '9'
    '6'
  else
    ss
  end
}.reverse.join("")
