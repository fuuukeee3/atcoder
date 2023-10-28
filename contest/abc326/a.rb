x, y = gets.chomp.split(" ").map(&:to_i)

if x > y
  if x - 3 <= y
    puts "Yes"
  else
    puts "No"
  end
else
  if x + 2 >= y
    puts "Yes"
  else
    puts "No"
  end
end