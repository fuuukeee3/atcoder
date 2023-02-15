n = gets.chomp.to_i
monsters = gets.chomp.split(" ").map(&:to_i)
heros = gets.chomp.split(" ").map(&:to_i)

count = 0
heros.each_with_index do |h, i|
  if h >= monsters[i]
    count += monsters[i]
    h -= monsters[i]
  else
    count += h
    h = 0
  end

  if h > 0
    if h >= monsters[i + 1]
      count += monsters[i + 1]
      monsters[i + 1] = 0
    else
      count += h
      monsters[i + 1] -= h
    end
  end
end

puts count