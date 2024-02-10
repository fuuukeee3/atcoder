q = gets.chomp.to_i
a = []

q.times do
  x, y = gets.chomp.split(" ").map(&:to_i)
  case x
  when 1
    a << y
  when 2
    puts a[-y]
  end
end