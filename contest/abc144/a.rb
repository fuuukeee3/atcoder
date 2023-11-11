a, b = gets.chomp.split(" ").map(&:to_i)
if (1..9).include?(a) && (1..9).include?(b)
  puts a * b
else
  puts -1
end