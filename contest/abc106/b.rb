n = gets.chomp.to_i
count = 0
(1..n).each do |i|
  next if i.even?

  c = 0
  (1..i).each do |ii|
    c += 1 if i % ii == 0
  end

  if c == 8
    count += 1
  end
end

puts count