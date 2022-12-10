# n = gets.chomp.to_i
# arr = gets.chomp.split(" ").map(&:to_i)

s = gets.chomp

if s.match(/^[A-Z][1-9]{1}[0-9]{5}[A-Z]$/)
  puts "Yes"
else
  puts "No"
end
