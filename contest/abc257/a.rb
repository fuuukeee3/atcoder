n, x = gets.chomp.split(" ").map(&:to_i)
str = ("A".."Z").map { |s| s * n }.join("")
puts str[x - 1]
