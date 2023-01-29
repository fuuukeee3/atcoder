n, m = gets.chomp.split(" ").map(&:to_i)
s_array = []
t_array = []

n.times do
  s_array << gets.chomp
end

m.times do
  t_array << gets.chomp
end

puts s_array.count { |s| t_array.include?(s[-3..-1]) }
