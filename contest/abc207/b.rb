a, b, c, d = gets.chomp.split(" ").map(&:to_i)

red = a
blue = 0
if b >= c * d
  puts -1
  exit
end

count = 0
loop do
  if red <= blue * d
    puts count
    exit
  end

  red += b
  blue += c
  count += 1
end