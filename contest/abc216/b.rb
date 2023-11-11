n = gets.chomp.to_i
arr = []
n.times do
  s, t = gets.chomp.split(" ")
  arr << "#{s} #{t}"
end

if n != arr.uniq.size
  puts "Yes"
else
  puts "No"
end