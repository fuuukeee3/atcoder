h, w = gets.chomp.split(" ").map(&:to_i)
arr = []
h.times do
  arr << gets.chomp.split("")
end

puts "#" * (w + 2)
arr.each do |a|
  puts "#" + a.join("") + "#"
end
puts "#" * (w + 2)

