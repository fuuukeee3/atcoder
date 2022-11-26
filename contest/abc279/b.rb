# n = gets.chomp.to_i
# arr = gets.chomp.split(" ").map(&:to_i)

s = gets.chomp
t = gets.chomp

if s.include?(t)
  puts "Yes"
else
  puts "No"
end
