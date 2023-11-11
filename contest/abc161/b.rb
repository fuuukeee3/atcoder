n, m = gets.chomp.split(" ").map(&:to_i)
arr = gets.chomp.split(" ").map(&:to_i)

total = arr.sum
under = total.to_f / (4 * m)
count = arr.count { |a| a >= under }

if count >= m
  puts "Yes"
else
  puts "No"
end