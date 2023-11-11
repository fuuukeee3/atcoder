n, x = gets.chomp.split(" ").map(&:to_i)
s = gets.chomp.split("")
s.each do |ss|
  if ss == 'o'
    x += 1
  else
    x = [0, x - 1].max
  end
end

puts x