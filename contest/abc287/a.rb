n = gets.chomp.to_i
arr = []
n.times do
  arr << gets.chomp
end

san, han = arr.partition { |a| a == "For" }
puts (san.size > han.size) ? "Yes" : "No"
