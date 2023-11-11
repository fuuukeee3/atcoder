arr = []
4.times do
  arr << gets.chomp.split(" ")
end

arr.reverse.each do |a|
  puts a.reverse.join(" ")
end