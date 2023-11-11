arr = gets.chomp.split(" ").map(&:to_i)
red = (arr[0]..arr[1]).to_a
blue = (arr[2]..arr[3]).to_a

a = red & blue
if a.size > 0
  puts a[-1] - a[0]
else
  puts 0
end
