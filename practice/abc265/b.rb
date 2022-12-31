n, m, t = gets.chomp.split(" ").map(&:to_i)
arr = gets.chomp.split(" ").map(&:to_i)

bonus = {}
m.times do |mm|
  x, y = gets.chomp.split(" ").map(&:to_i)
  bonus[x] = y
end

current = 1
result = ""
arr.each do |time|
  t -= time
  if t <= 0
    result = "No"
    break
  end

  current += 1
  if bonus[current]
    t += bonus[current]
  end
end

if result == "No"
  puts result
else
  puts "Yes"
end
