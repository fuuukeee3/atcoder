n = gets.chomp.to_i
a = gets.chomp.split(" ").map(&:to_i)

a.sort!
q = gets.chomp.to_i
q.times do
  x = gets.chomp.to_i

  l = 0
  r = n - 1
  loop do
    break if l > r
    mid = (l + r) / 2
    if x <= a[mid]
      r = mid - 1
    elsif x > a[mid]
      l = mid + 1
    end
  end

  puts l
end
