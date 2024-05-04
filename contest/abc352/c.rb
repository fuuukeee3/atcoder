n = gets.chomp.to_i
kata = 0
atama = 0

n.times do
  a, b = gets.chomp.split(" ").map(&:to_i)
  kata += a
  if b - a > atama
    atama = b - a
  end
end

puts kata + atama

