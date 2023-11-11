n = gets.chomp.to_i
results = []

(1..n).each do |h|
  (1..n).each do |w|
    break if h * w > n
    results << [h, w]

    w += 1
  end
  h += 1
end

min = 9999999999
results.each do |r|
  mod = n - (r[0] * r[1])
  ans = mod + (r[0] - r[1]).abs
  min = [min, ans].min
end

puts min