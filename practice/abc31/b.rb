l, h = gets.chomp.split(" ").map(&:to_i)
n = gets.chomp.to_i
n.times do
  a = gets.chomp.to_i

  if a > h
    puts -1
  elsif a < l
    puts l - a
  else
    puts 0
  end
end