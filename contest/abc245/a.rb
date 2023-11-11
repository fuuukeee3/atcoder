a, b, c, d = gets.chomp.split(" ").map(&:to_i)

if a < c
  puts "Takahashi"
elsif a > c
  puts "Aoki"
else
  if b <= d
    puts "Takahashi"
  else
    puts "Aoki"
  end
end