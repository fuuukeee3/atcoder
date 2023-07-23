n = gets.chomp.to_i
arr = gets.chomp.split(" ").map(&:to_i)
arr.unshift(0)
now = 1

n.times do
  now = arr[now]
end

r = [now]
loop do
  if r[0] == arr[now]
    break
  end
  now = arr[now]
  r << now
end

puts r.size
puts r.join(" ")

