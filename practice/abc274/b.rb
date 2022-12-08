h, w = gets.chomp.split(" ").map(&:to_i)

arr = []
h.times do |hh|
  arr << gets.chomp.split("")
end

puts arr.transpose.map { |a| a.join("").count("#") }.join(" ")
