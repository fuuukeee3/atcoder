n = gets.chomp.to_i
arr = []
sum_cm = 0
sum_sec = 0
n.times do
  a, b = gets.chomp.split(" ").map(&:to_i)
  arr << [a, b, a / b.to_f]
  sum_cm += a
  sum_sec += a / b.to_f

end

results = 0
fire = sum_sec / 2
arr.each do |a|
  if a[2] <= fire
    results += a[0]
  else
    results += a[1] * fire
  end

  fire -= a[2]
  if fire <= 0
    break
  end
end

puts results