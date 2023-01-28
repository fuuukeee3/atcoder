n, m = gets.chomp.split(" ").map(&:to_i)
s_array = []
t_array = []

n.times do
  s_array << gets.chomp
end

m.times do
  t_array << gets.chomp
end

# p s_array
# p t_array

count = 0

s_array.each do |s|
  count += 1 if t_array.include?(s[-3..-1])
end

puts count
