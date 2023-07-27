n = gets.chomp.to_i
arr = []
n.times do
  t, l, r = gets.chomp.split(" ").map(&:to_i)
  case t
  when 1
    arr << [l, r]
  when 2
    arr << [l, r - 0.5]
  when 3
    arr << [l + 0.5, r]
  when 4
    arr << [l + 0.5, r - 0.5]
  end
end

count = 0
(0...(n - 1)).each do |i|
  ((i + 1)...n).each do |j|
    k1 = arr[i]
    k2 = arr[j]

    count += 1 if [k1[0], k2[0]].max <= [k1[1], k2[1]].min
  end
end

puts count
