n, a, b = gets.chomp.split(" ").map(&:to_i)
arr = []
white = true
(a * n).times do |i|
  if i % a == 0
    white = !white
  end
  line = ''
  (b * n).times do |j|
    if j % b == 0
      white = !white
    end

    if white
      line += '.'
    else
      line += '#'
    end
  end
  arr << line
end

puts arr.join("\n")