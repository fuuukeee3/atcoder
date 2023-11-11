n, m = gets.chomp.split(" ").map(&:to_i)
arr = []
n.times do
  arr << gets.chomp.split(" ").map(&:to_i)
end

new_arr = arr.sort { |a, b| a[0] <=> b[0] }

money = 0
new_arr.each do |a|
  break if m <= 0

  if m <= a[1]
    money += a[0] * m
    m = 0
  else
    money += a[0] * a[1]
    m -= a[1]
  end
end

puts money
