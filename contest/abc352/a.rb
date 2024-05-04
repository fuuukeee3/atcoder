n, x, y, z = gets.chomp.split(" ").map(&:to_i)

if x > y
  if z <= x && z >= y
    puts "Yes"
  else
    puts "No"
  end
else
  if z >= x && z <= y
    puts "Yes"
  else
    puts "No"
  end
end