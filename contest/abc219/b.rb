s = []
s << gets.chomp
s << gets.chomp
s << gets.chomp
t = gets.chomp.split("").map(&:to_i)

t.each do |tt|
  print s[tt-1]
end
puts
