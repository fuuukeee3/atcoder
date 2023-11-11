n, t = gets.chomp.split(" ").map(&:to_i)
c = gets.chomp.split(" ").map(&:to_i)
r = gets.chomp.split(" ").map(&:to_i)

max = 0
win = -1

if c.include?(t)
  (0...n).each do |i|
    if c[i] == t && r[i] > max
      max = r[i]
      win = i
    end
  end
else
  t = c[0]
  (0...n).each do |i|
    if c[i] == t && r[i] > max
      max = r[i]
      win = i
    end
  end
end

puts win + 1