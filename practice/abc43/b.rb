s = gets.chomp.split("")
str = ""

s.each do |ss|
  case ss
  when "0"
    str += "0"
  when "1"
    str += "1"
  when "B"
    unless str == ""
      str = str[0...-1]
    end
  end
end

puts str