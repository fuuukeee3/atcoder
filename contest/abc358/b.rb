n, a = gets.chomp.split(" ").map(&:to_i)
t = gets.chomp.split(" ").map(&:to_i)

total = 0
t.each_with_index do |tt, i|
  if i.zero?
    total = tt + a
  else
    if tt - t[i - 1] <= a
      total += a
    else
      total = tt + a
    end
  end
  puts total
end