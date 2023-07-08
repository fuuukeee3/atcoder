n = gets.chomp.to_i
arr = []
n.times do
  arr << gets.chomp.split("").map(&:to_i)
end

top = arr[0]
under = arr[n - 1]
left = arr.map { |a| a[0] }
right = arr.map { |a| a[n - 1] }

left.shift
left.pop
right.shift
right.pop

right.unshift(top.pop)
top.unshift(left.shift)
left.push(under.shift)
under.push(right.pop)

if n == 2
  top[0] = left.shift
end

arr.each_with_index do |a, i|
  if i.zero?
    puts top.join("")
    next
  end

  if i == n - 1
    puts under.join("")
    next
  end

  a[0] = left.shift
  a[n - 1] = right.shift
  puts a.join("")
end