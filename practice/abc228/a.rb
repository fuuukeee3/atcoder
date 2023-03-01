s, t, x = gets.chomp.split(" ").map(&:to_i)
if s < t
  if x >= s && x < t
    puts "Yes"
  else
    puts "No"
  end
else
  if x >= s || x < t
    puts "Yes"
  else
    puts "No"
  end
end