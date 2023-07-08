a, b = gets.chomp.split(" ").map(&:to_i)
if a % 3 == 1 && b % 3 == 2 || a % 3 == 2 && b % 3 == 0
  if a + 1 == b
    puts "Yes"
  else
    puts "No"
  end
else
  puts "No"
end