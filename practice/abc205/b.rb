n = gets.chomp.to_i
arr = gets.chomp.split(" ").map(&:to_i)

if arr.uniq.sort == (1..n).to_a
  puts "Yes"
else
  puts "No"
end
