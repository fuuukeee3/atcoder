a, b, c = gets.chomp.split(" ").map(&:to_i)
if c.zero?
  if a - b > 0
    puts "Takahashi"
  else
    puts "Aoki"
  end
else
  if b - a > 0
    puts "Aoki"
  else
    puts "Takahashi"
  end

end