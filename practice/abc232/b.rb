s = gets.chomp
t = gets.chomp

s_array = s.codepoints
t_array = t.codepoints
sa = [s_array, t_array].transpose.map { |array| array.inject(&:-) % 26 }
if sa.uniq.size == 1
  puts "Yes"
else
  puts "No"
end