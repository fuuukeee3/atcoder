s = gets.chomp
str = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"

flg = true
s.split("").each_with_index do |ss, i|
  if i.zero?
    flg = false unless str.include?(ss)
  else
    flg = false if str.include?(ss)
  end
end

if flg
  puts "Yes"
else
  puts "No"
end
