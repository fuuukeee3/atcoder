n, k = gets.chomp.split(" ").map(&:to_i)

total = 0
(1..n).each do |i|
  (1..k).each do |j|
    room = "#{i}0#{j}"
    total += room.to_i
  end
end

puts total