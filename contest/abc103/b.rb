s = gets.chomp
t = gets.chomp

len = s.size
len.times do
  s = s[-1] + s[0...-1]
  if s == t
    puts "Yes"
    return
  end
end

puts "No"
